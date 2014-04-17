class PublishersController < ApplicationController
  def index
    @publishers = Publisher.all.order("name asc")
  end

  def show
    @publisher = Publisher.find(params[:id])
  end
end
