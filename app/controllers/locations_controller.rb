class LocationsController < ApplicationController

  caches_page :show

  def show
    @location = Location.find(params[:id])
    @exhibits = @location.exhibits
  end
end
