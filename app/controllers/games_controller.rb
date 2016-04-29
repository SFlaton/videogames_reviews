class GamesController < ApplicationController
  before_filter :set_category

  def index
    @games = @category.games

    respond_to do |format|
      format.html
      format.json { render json: { category: @category, games: @games } }
    end
  end

  def show
    @game = @category.games.find(params[:id])

    respond_to do |format|
      format.html
      format.json { render json: { game: @game, category: @category } }
    end
  end

  def create
    @game = Game.new(game_params)
    @game.category = @category

    if @game.save
      format.html { redirect_to category_game_path(@category, @game) }
      format.json {render :show, :title, :created }
    else
      format.html { render :new }
    end
  end


  protected

  def set_category
    @category = Category.find(params[:category_id])
  end
end
