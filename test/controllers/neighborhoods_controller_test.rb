require 'test_helper'

class NeighborhoodsControllerTest < ActionController::TestCase
  test "should get show" do
    get :show, id: neighborhoods(:chelsea)
    assert_response :success
  end

end
