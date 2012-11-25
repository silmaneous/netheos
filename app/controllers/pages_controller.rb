class PagesController < ApplicationController
  @@title = ""

  def home
  end
  
  def ekeynox
    @title = t(:ekeynox)
  end

  def banking
    @title = t(:banking)
  end
    
  def payment
    @title = t(:payment)
  end
  
  def contract
    @title = t(:contract)
  end

  def about
    @title = t(:about)
  end
  
end
