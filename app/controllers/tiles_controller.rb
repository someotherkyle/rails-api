class TilesController < ApplicationController
  def create
    tile = Tile.new(tile_params)
    render json: tile
  end

  def show
    tile = Tile.find_by(id: params[:id])
  end

  private
    def tile_params
      params.require(:tile).permit(:game_id)
    end
end
