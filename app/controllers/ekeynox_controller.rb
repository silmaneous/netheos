class EkeynoxController < ApplicationController
  @@title = "eKeynox"
  
  def home
    @title = @@title
  end
  
  def usb_trust
      @title = @@title
  end

  def usb_devices
      @title = @@title
      
      @header = false
      @footer = false
  end

  def mobile_sdk_apps
    @title = @@title
  end

end
