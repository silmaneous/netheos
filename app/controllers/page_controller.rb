class PageController < ApplicationController
  def home
    @title = "Trust & Privacy"
  end

  def about
    @title = "About"
  end

  def contact
    @title = "Contact"
  end

end
