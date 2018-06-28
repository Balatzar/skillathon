class UsersController < ApplicationController
  before_action :authenticate_user!
  before_action :set_user, only: [:show, :import_steam, :import_full_steam_library]

  # GET /users
  # GET /users.json
  def index
    @users = User.all
  end

  # GET /users/1
  # GET /users/1.json
  def show
  end

  def import_steam
  end

  def import_full_steam_library
    SteamApi.new(params[:steam_id], @user.id).import_games
    redirect_to @user, notice: "Full Steam library imported imported"
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_user
      @user = User.find(params[:id])
    end
end
