class ApplicationController < ActionController::Base
  # Prevent CSRF attacks by raising an exception.
  # For APIs, you may want to use :null_session instead.
  protect_from_forgery with: :exception

  before_action :load_nav_hoods

  private

    def load_nav_hoods
      @nav_hoods = Neighborhood.all.order(:name)
    end

end
