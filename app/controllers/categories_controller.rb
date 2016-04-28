class CategoriesController < ApplicationController

  def index
    @categories = Category.all
  
    respond_to do |f|
      f.html { render }
      f.json { render json: { category: @category, games: @games } }
    end
  end

end
