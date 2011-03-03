class ApplicationController < ActionController::Base
  protect_from_forgery

  helper_method :authenticated?

  def authenticated?
    !session[:uid].blank? && !session[:provider].blank?
  end
end
