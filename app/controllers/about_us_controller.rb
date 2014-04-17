class AboutUsController < ApplicationController
  def index
  end

  def show
    @about_us = AboutUs.first
  end
end
