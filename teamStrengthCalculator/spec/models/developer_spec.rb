require 'rails_helper'

RSpec.describe Developer, type: :model do
  context 'validations' do
    let(:developer) { FactoryGirl.create(:developer, name: "The Wicked Witch", dev_type: "special_guest") }

    it 'should allow for a named developer' do
      expect(developer).to be_valid
    end

    it 'should not allow dev_type to be anything other than full_time, part_time, or special_guest.' do
      developer.update_attribute(:dev_type, "Special God")
      expect(developer).to_not be_valid
      expect(developer.errors[:dev_type]).to eq(["must be either 'Part Time', 'Full Time', or 'Special Guest'"])
    end
  end
end
