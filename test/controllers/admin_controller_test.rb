require 'test_helper'

class AdminControllerTest < ActionController::TestCase
  test "should get console" do
    get :console
    assert_response :success
  end

end
