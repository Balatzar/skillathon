class AddSteamIdToGames < ActiveRecord::Migration[5.2]
  def change
    add_column :games, :steam_id, :integer
  end
end
