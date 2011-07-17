class AdsController < ApplicationController
  def index
    @sponsor = current_sponsor
  end

  def new
    @meetup = Meetup.find(params[:meetup_id])
  end

  def create
  end

  def edit
  end

  def update
  end

  def show
  end

end
