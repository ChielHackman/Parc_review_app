class ParcsController < ApplicationController
  def index
    parcs = Parc.all
    nederland = get_country(parcs, "nederland")
    belgië = get_country(parcs, "belgië")
    duitsland = get_country(parcs, "duitsland")

    render json: {
      meta: {
        count: Parc.count,
        page: 0
      },
      nederland: nederland.as_json({:include => :reviews, :methods => :average_rating}),
      belgië: belgië.as_json({:include => :reviews, :methods => :average_rating}),
      duitsland: duitsland.as_json({:include => :reviews, :mothods => :average_rating})
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

  private

  def get_country(parcs, country)
    array = []
    parcs.each do |parc|
      if parc.country == country
        array << parc
      end
    end
    return array
  end
  
end
