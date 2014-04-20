class StoreController < ApplicationController
  def index
    @genres = Genre.order(:name)
  end

  def search
  end

  def search_results  
    @found_games = Game.keyword_search(params[:search_keywords]).page(params[:page]).per(5)
  end
  
  def cart
    @provinces = Province.all
  end
  
  def sale
    @games = Game.where("sale_price IS NOT NULL").page(params[:page]).per(5)
  end
  
  def new_game
    @games = Game.order("id DESC").where("sale_price IS NULL").limit(10).page(params[:page]).per(5)
  end
  
end
