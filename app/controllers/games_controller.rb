class GamesController < ApplicationController
  
  def index
    @games = Game.all.order("name asc").page(params[:page]).per(5)
  end

  def show
    @game = Game.find(params[:id])
  end
  
end
