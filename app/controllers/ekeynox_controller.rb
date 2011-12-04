class EkeynoxController < ApplicationController
  @@title = "eKeynox"
  
  def home
    @title = @@title
  end
  
  def management_system
    @title = @@title
  end

  def usb_trust
      @title = @@title
  end

  def mobile_trust
    @title = @@title
  end

end
