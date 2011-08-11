require 'test_helper'

class EkeynoxControllerTest < ActionController::TestCase
  test "should get management_system" do
    get :management_system
    assert_response :success
  end

  test "should get usb_toolkit" do
    get :usb_toolkit
    assert_response :success
  end

  test "should get usb_devices" do
    get :usb_devices
    assert_response :success
  end

  test "should get mobile_toolkit" do
    get :mobile_toolkit
    assert_response :success
  end

end
