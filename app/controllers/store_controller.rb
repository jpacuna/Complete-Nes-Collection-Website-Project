class StoreController < ApplicationController
  def index
    @genres = Genre.order(:name)
  end

  def search
  end

  def search_results  
    @found_games = Game.keyword_search(params[:search_keywords])
  end
  
end
