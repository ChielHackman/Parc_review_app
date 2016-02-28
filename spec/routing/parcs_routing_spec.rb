require 'rails_helper'

RSpec.describe ParcsController, type: :routing do
  describe "routes" do
    it "routes to #index" do
      expect(get '/parcs').to route_to 'parcs#index'
    end

    it "routes to #show" do
      expect(get '/parcs/2').to route_to 'parcs#show', id: "2"
    end
  end
end
