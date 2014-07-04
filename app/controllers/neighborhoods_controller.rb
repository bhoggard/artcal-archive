class NeighborhoodsController < ApplicationController

  caches_page :show

  def show
    @neighborhood = Neighborhood.find(params[:id])
    @locations = @neighborhood.locations
  end
end
