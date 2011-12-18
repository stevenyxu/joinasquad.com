class ApplicationController < ActionController::Base
  before_filter :set_persistent_user_cookie
  protect_from_forgery

protected

  def set_persistent_user_cookie
    cookies['last_user_signed_in'] = current_user.email if user_signed_in?
  end
end
