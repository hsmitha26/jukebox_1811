require 'rails_helper'

RSpec.describe Award, type: :model do
  describe 'relationships' do
    it {should belong_to :song}
  end

  describe "name" do
    it "can be 'Best New Song'" do
      award = Award.create(name: 0)

      expect(award.name).to eq("Best New Song")
    end

    it "can not be 'Best New Song'" do
      award = Award.create(name: 1)

      expect(award.name).to_not eq("Best New Song")
      expect(award.name).to eq("Best Sad Song")
    end
  end
end
