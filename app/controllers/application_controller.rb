# Filters added to this controller apply to all controllers in the application.
# Likewise, all the methods added will be available for all controllers.

class ApplicationController < ActionController::Base
  helper :all # include all helpers, all the time
  protect_from_forgery # See ActionController::RequestForgeryProtection for details

  # Scrub sensitive parameters from your log
  # filter_parameter_logging :password

  def login_required
    if session[:user]
      return true
    end
    flash[:warning]="Please login to continue"
    session[:return_to] = request.request_uri
    redirect_to :controller => "search", :action => "index"
    return false
  end

  def current_user
    session[:user]
  end

  def redirect_to_stored
  if return_to = session[:return_to]
    session[:return_to] = nil
    redirect_to_url(return_to)
  else
    redirect_to :controller => "search", :action => "index"
  end
  end
end
