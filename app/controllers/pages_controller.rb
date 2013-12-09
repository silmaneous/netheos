class PagesController < ApplicationController
  @@title = ""

  def home
    @title = "Trust & Privacy"
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

  def cdiscount_mastercard 
    @title = t(:press)
  end
  
end
