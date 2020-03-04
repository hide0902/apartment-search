class RoomsController < ApplicationController
  

  def show
    @room = Room.find(params[:id])
    @like = Like.new
    @station = @room.building.stations
    @image = @room.images
  end
end
