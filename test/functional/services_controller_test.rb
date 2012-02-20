require 'test_helper'

class ServicesControllerTest < ActionController::TestCase
  test "should get home" do
    get :home
    assert_response :success
  end

end
