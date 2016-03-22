require 'rails_helper'

RSpec.describe ReviewsController, type: :routing do
  describe "routes" do

    it "routes to #index" do
      expect(:get => "/parcs/5/reviews").to route_to(
      :controller => "reviews",
      :action => "index",
      :parc_id => "5"
      )
    end

    it "routes to #create" do
      expect(:post => "/parcs/1/reviews").to route_to(
      :controller => "reviews",
      :action => "create",
      :parc_id => "1"
      )
    end
  end
end
