require 'rails_helper'

RSpec.describe Review, type: :model do

  describe "It should belong to a parc" do
    it { is_expected.to belong_to(:parc) }
  end
end
