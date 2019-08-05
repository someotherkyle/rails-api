class GamesController < ApplicationController
  def create
    game = Game.new(game_params)
    render json: game
  end

  def show
    game = Game.find_by(id: params[:id])
    render json: game
  end

  def index
    games = Game.all
    render json: games
  end

  private
    def game_params
      params.require(:game).permit(:user_id, :score)
    end
end
