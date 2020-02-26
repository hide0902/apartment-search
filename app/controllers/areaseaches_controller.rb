class AreaseachesController < ApplicationController
  def index
    @search = Building.includes(:rooms, :stations).ransack(params[:q])
  end
end
