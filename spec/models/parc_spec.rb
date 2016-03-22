require 'rails_helper'

RSpec.describe Parc, type: :model do

  describe "Testing the relation to reviews" do
    it { is_expected.to have_many(:reviews) }
  end

  describe "Every country should be an array with parcs" do
    it "Shows a list of parcs in the specific country" do
      parc1 = Parc.create!(:country => "nederland")
      parc2 = Parc.create!(:country => "nederland")
      parc3 = Parc.create!(:country => "nederland")
      parc4 = Parc.create!(:country => "belgië")
      parc5 = Parc.create!(:country => "belgië")
      parc6 = Parc.create!(:country => "belgië")
      parc7 = Parc.create!(:country => "duitsland")
      parc8 = Parc.create!(:country => "duitsland")
      parc9 = Parc.create!(:country => "duitsland")

      expect(Parc.where("country = 'nederland'")).to eq([parc1, parc2, parc3])
    end

    it "Shows a list of parcs in the specific country" do
      parc1 = Parc.create!(:country => "nederland")
      parc2 = Parc.create!(:country => "nederland")
      parc3 = Parc.create!(:country => "nederland")
      parc4 = Parc.create!(:country => "belgië")
      parc5 = Parc.create!(:country => "belgië")
      parc6 = Parc.create!(:country => "belgië")
      parc7 = Parc.create!(:country => "duitsland")
      parc8 = Parc.create!(:country => "duitsland")
      parc9 = Parc.create!(:country => "duitsland")

      expect(Parc.where("country = 'belgië'")).to eq([parc4, parc5, parc6])
    end

    it "Shows a list of parcs in the specific country" do
      parc1 = Parc.create!(:country => "nederland")
      parc2 = Parc.create!(:country => "nederland")
      parc3 = Parc.create!(:country => "nederland")
      parc4 = Parc.create!(:country => "belgië")
      parc5 = Parc.create!(:country => "belgië")
      parc6 = Parc.create!(:country => "belgië")
      parc7 = Parc.create!(:country => "duitsland")
      parc8 = Parc.create!(:country => "duitsland")
      parc9 = Parc.create!(:country => "duitsland")
      
      expect(Parc.where("country = 'duitsland'")).to eq([parc7, parc8, parc9])
    end
  end
end
