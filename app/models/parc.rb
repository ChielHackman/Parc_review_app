class Parc < ActiveRecord::Base
  has_many :reviews

  def has_reviews?
    self.reviews.present?
  end

  def average_rating
    if has_reviews?
      return self.reviews.average(:rating).round
    else
      return 0
    end
  end
end
