class ApplicationController < ActionController::Base
  protect_from_forgery
  
  before_filter :set_locale

  def set_locale
    I18n.locale = extract_locale_from_tld || I18n.default_locale
  end

  def extract_locale_from_tld
    parsed_locale = request.host.split('.').last
    I18n.available_locales.include?(parsed_locale.to_sym) ? parsed_locale : nil
  end

end
