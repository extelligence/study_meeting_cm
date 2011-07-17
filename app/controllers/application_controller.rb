class ApplicationController < ActionController::Base
  protect_from_forgery

  PLANNED      = "PLANNED"      # 予定
  CANCELLED    = "CANCELLED"    # 中止
  CONFIRMATION = "CONFIRMATION" # 確定
  COMPLETION   = "COMPLETION"   # 完了

  def current_staff
    if staff_id = session[:staff_id]
      Staff.find(staff_id)
    else
      nil
    end
  end
  helper_method :current_staff

  def current_sponsor
    if sponsor_id = session[:sponsor_id]
      Sponsor.find(sponsor_id)
    else
      nil
    end
  end
  helper_method :current_sponsor

private
  def require_login
    unless current_staff || current_sponsor
      redirect_to root_path
    end
  end
end
