class ReviewsController < ApplicationController

  def index
    @reviews = @games.reviews

    respond_to do |format|
      format.html
      format.json { render json: { games: @games, reviews: @reviews } }
    end
  end

  def show
    @review = @games.review.find(params[:id])

    respond_to do |format|
      format.html
      format.json { render json: { review: @review, game: @game } }
    end
  end

  def create
    @review = Review.new(review_params)
    @review.game = @review

    if @review.save
      format.html { redirect_to game_review_path(@game, @review) }
      format.json { render :show, :title, :content }
    else
      format.html { render :new }
    end
  end

end
