require 'rails_helper'

RSpec.describe ParcsController, type: :routing do
  describe "routes" do

    it "routes to #index" do
      expect(:get => "/").to route_to ("parcs#index")
    end

    it "routes to #show" do
      expect(:get => "/parcs").to route_to ("parcs#index")
    end

    it "routes to #index" do
      expect(:get => "/parcs/5/reviews").to route_to(
      :controller => "reviews",
      :action => "index",
      :parc_id => "5"
      )
    end

    it "routes to #create" do
      expect(:post => "/parcs").to route_to ("parcs#create")
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
