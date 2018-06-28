class SteamApi
  def initialize(steam_id, user_id)
    @steam_id = steam_id
    @user_id = user_id
  end

  def import_games
    games = request_games
    create_games games
  end

  def request_games
    api_key = Rails.application.credentials.steam_api_key
    url = "http://api.steampowered.com/IPlayerService/GetOwnedGames/v0001/?key=#{api_key}&steamid=#{steam_id}&format=json&include_appinfo=1&include_played_free_games=1"
    JSON.parse(RestClient.get(url).body, object_class: OpenStruct).response.games
  end

  def create_games(games)
    games.each do |game|
      pc = System.find_by(name: "PC")
      g = pc.games.find_or_create_by!(steam_id: game.appid, name: game.name)
      OwnedGame.find_or_create_by!(user_id: user_id, game_id: g.id)
    end
  end

  attr_reader :steam_id, :user_id
end
