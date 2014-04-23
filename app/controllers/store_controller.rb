class StoreController < ApplicationController
  def index
    @games = Game.all
    @new_game = Game.order("id DESC").where("sale_price IS NULL").limit(5)
    @games_on_sale = Game.where("sale_price IS NOT NULL").limit(5)
  end

  def search
  end

  def search_results  
    @found_games = Game.keyword_search(params[:search_keywords], params[:ids]).page(params[:page]).per(5)
  end
  
  def sale
    @games = Game.where("sale_price IS NOT NULL").page(params[:page]).per(5)
  end
  
  def new_game
    @games = Game.order("id DESC").where("sale_price IS NULL").limit(10).page(params[:page]).per(5)
  end
  
end
