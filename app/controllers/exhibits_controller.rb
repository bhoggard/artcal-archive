class ExhibitsController < ApplicationController

  caches_page :show

  def show
    @exhibit = Exhibit.find(params[:id])
  end
end
