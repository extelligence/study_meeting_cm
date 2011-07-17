class ApplicationController < ActionController::Base
  protect_from_forgery

  def current_sponsor
    if sponsor_id = session[:sponsor_id]
      Sponsor.find(sponsor_id)
    else
      nil
    end
  end
  helper_method :current_sponsor
end
