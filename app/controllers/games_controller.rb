class GamesController < ApplicationController
  def create
    game = Game.new(game_params)
  end

  def index
    @games = Game.all
  end

  def show
    @game = Game.find_by(id: params[:id])
  end

  private
    def game_params
      params.require(:game).permit(:user_id)
    end
end
