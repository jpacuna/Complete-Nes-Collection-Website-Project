class GenresController < ApplicationController
  
  def index
    @genres = Genre.all.order("name asc")
  end

  def show
    @genre = Genre.find(params[:id])
  end
end
