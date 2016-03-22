require 'rails_helper'

RSpec.describe ReviewsController, type: :controller do

  let!(:parc) { Parc.create! name: "De Eemhof", id: 1 }
  let!(:review) { Review.create! valid_attributes }
  let!(:valid_attributes) do

    {parc_id: parc.id}
  end

  describe "#create" do
    it "creates a new review" do
      expect {
        post :create, parc_id: parc.to_param, review: valid_attributes
      }.to change(Review, :count).by(1)
    end
  end
end
