class ServicesController < ApplicationController
  @@title = "eKeynox"

  def home
    @title = @@title
  end

end
