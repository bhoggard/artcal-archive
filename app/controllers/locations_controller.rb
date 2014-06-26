class LocationsController < ApplicationController
  def show
    @location = Location.find(params[:id])
    @exhibits = @location.exhibits
  end
end
