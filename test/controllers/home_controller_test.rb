require 'test_helper'

class HomeControllerTest < ActionController::TestCase
  test "should get code" do
    get :code
    assert_response :success
  end

end
