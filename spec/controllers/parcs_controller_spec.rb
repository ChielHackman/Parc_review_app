require 'rails_helper'

RSpec.describe ParcsController, type: :controller do

let!(:parc) { Parc.create! name: "De Eemhof", id: 1 }

  describe "#index" do

    it "goes to the index" do
      get :index
      expect(response).to be_success
    end

    it "returns json from the API" do
      get :index
      expect(response.header['Content-Type']).to include('application/json')
    end
  end

  describe "#show" do

    it "shows the parc" do
      get :index, id: 1
      expect(response).to be_success
    end
  end
end
