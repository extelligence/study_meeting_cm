# -*- coding: utf-8 -*-

class AdsController < ApplicationController
  def index
    @pagetitle = "広告掲載希望リスト"
    @ads = Ad.all

    respond_to do |format|
      format.html # index.html.erb
    end
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
