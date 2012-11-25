class EkeynoxController < ApplicationController
  @@title = "eKeynox"
  
  def home
    @title = @@title
  end
  
  def mobile_sdk_lb
    @title = @@title
    
    @header = false
    @footer = false
  end

  def apps
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

  def usb_applications
      @title = @@title
      
      @header = false
      @footer = false
  end

  def usb_management
      @title = @@title
      
      @header = false
      @footer = false
  end

  def mobile_sdk
    @title = @@title
  end

end
