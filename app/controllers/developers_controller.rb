class DevelopersController < ApplicationController
  
  def index
    @developers = Developer.all.order("name asc")
  end

  def show
    @developer = Developer.find(params[:id])
  end
  
end
