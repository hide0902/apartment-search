class SearchesController < ApplicationController
  def index
    @search = Building.includes(:rooms, :stations).ransack(params[:q])
    @buildings = @search.result(distinct: true).includes(:rooms, :stations)
  end
end
