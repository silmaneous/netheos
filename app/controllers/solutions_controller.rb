class SolutionsController < ApplicationController
  @@title = "Solutions"

  def home
    @title = @@title
  end

  def web_access_protection
    @title = @@title
    
    @header = false
    @footer = false
  end

  def document_privacy
    @title = @@title

    @header = false
    @footer = false
  end

  def instant_contract_signing
    @title = @@title

    @header = false
    @footer = false
  end

  def financial_institutions
    @title = @@title
    
    @header = false
    @footer = false
  end
  
  def device_manufacturers
    @title = @@title

    @header = false
    @footer = false
  end
  
  def software_compagnies
    @title = @@title

    @header = false
    @footer = false
  end
  
end
