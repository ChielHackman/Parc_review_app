class ParcsController < ApplicationController
  def index
    parcs = Parc.order(:name)

    render json: {
      parcs: parcs.as_json({:include => :reviews, :methods => :average_rating})
    }
  end

  def show
    parc = Parc.find(params[:id])
    average_rating = parc.average_rating
    reviews = parc.reviews
    render json: {
      parc: parc,
      average_rating: average_rating,
      reviews: reviews
     }
  end

  def create
    if parc = Parc.create(parc_params)
      render json: { parc: parc }
    else
      render json: {
        message: "Create parc failled",
        errors: parc.errors,
      }, status: :unprocessible_entity
    end
  end

  def update
    parc = Parc.find(params[:id])

    if parc.update(parc_params)
      render json: { parc: parc }
    else
      render json: {
        message: "Could not update parc",
        errors: parc.errors,
      }, status: :unprocessible_entity
    end
  end

  def destroy
    parc = Parc.find(params[:id])

    if parc.destroy
      render json: { parc: nil }
    else
      render json: {
        message: "Not able to delete parc, please try again",
      }, status: :unprocessible_entity
    end
  end

  private

  def get_average
    reviews = parc.reviews
    if reviews.empty?
      return 0
    else
      review_sum = reviews.inject(0) { |sum, review| sum += review.rating }
      avg_rating = (review_sum.to_f / reviews.count).round
    end
  end

  def parc_params
    params.require(:parc).permit(:name, :description, :city)
  end
end
