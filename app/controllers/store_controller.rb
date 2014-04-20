class StoreController < ApplicationController
  def index
    @genres = Genre.order(:name)
  end

  def search
  end

  def search_results
  end
end
