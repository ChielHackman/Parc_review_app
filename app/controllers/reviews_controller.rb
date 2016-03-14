class ReviewsController < ApplicationController
  before_action :find_parc

  def index
    render json: {
      meta: {
        count: @parc.reviews.count,
        page: 0
      },
      reviews: @parc.reviews.order(:name, :comment, :rating, :id)
    }
  end

  def create
    review = Review.new(review_params)
    review.parc = @parc

    if review.save
      render json: { review: review }
    else
      render json: {
        message: "Not able to create Review",
        errors: review.errors,
      }, status: :unprocessible_entity
    end
  end

  def update
    review = @parc.reviews.find(params[:id])

    if review.update(review_params)
      render json: { review: review }
    else
      render json: {
        message: "Not able to update Review",
        errors: review.errors,
      }, status: :unprocessible_entity
    end
  end

  def destroy
    review = @parc.reviews.find(params[:id])

    if review.destroy
      render json: { review: nil }
    else
      render json: {
        message: "Not able to delete Review, please try again",
      }, status: :unprocessible_entity
    end
  end

  private

  def set_parc
    @parc = Parc.find(params[:parc_id])
  end

  def review_params
    params.require(:review).permit(:name, :comment, :rating)
  end
end
