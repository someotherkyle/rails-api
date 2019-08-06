class GamesController < ApplicationController
  def create
    game = Game.new(game_params)
    render json: game
  end

  def index
    games = Game.all
    render json: games
  end

  private
    def game_params
      params.require(:game).permit(:player_name, :score)
    end
end
