class PageController < ApplicationController
  def home
    @title = "Trust & Privacy"
  end

  def about
    @title = "About"
  end

  def contact
    @title = "Contacts"
  end
  
end
