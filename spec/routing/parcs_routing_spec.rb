require 'rails_helper'

RSpec.describe ParcsController, type: :routing do
  describe "routes" do
    it "routes to #index" do
      expect(get '/').to route_to 'home#index'
    end

    it "routes to #show" do
      expect(get '/parcs/').to route_to 'parcs#show'
    end
  end
end
