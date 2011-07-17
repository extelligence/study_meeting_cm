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

  def current_staff
    if staff_id = session[:staff_id]
      Staff.find(staff_id)
    else
      nil
    end
  end
  helper_method :current_staff
end
