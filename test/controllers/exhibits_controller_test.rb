require 'test_helper'

class ExhibitsControllerTest < ActionController::TestCase
  test "should get show" do
    get :show, id: exhibits(:foxy_show)
    assert_response :success
  end

end
