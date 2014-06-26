require 'test_helper'

class LocationsControllerTest < ActionController::TestCase
  test "should get show" do
    get :show, id: locations(:momentaart)
    assert_response :success
  end

end
