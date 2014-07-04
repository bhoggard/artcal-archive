class ExhibitsController < ApplicationController
  def show
    @exhibit = Exhibit.find(params[:id])
  end
end
