# Filters added to this controller apply to all controllers in the application.
# Likewise, all the methods added will be available for all controllers.

class ApplicationController < ActionController::Base
  include Clearance::Authentication
  
  before_filter :set_time_zone
  
  helper :all # include all helpers, all the time
  protect_from_forgery # See ActionController::RequestForgeryProtection for details

  # Scrub sensitive parameters from your log
  # filter_parameter_logging :password
  
private  
  def set_time_zone
    Time.zone = current_user ? current_user.time_zone : "Central Time (US &amp; Canada)"
  end
end
