class AdsController < ApplicationController
  def index
    @ads = Ad.all

    respond_to do |format|
      format.html # index.html.erb
    end
  end
end
