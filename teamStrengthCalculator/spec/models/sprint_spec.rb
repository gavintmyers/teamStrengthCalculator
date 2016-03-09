require 'rails_helper'

RSpec.describe Sprint, type: :model do

  context 'start_date/end_date validations ' do

    let(:sprint) { FactoryGirl.create(:sprint, start_date: '2016-03-09', end_date: '2017-03-09', iteration_length: 11, part_time_multiplier: 1.3) }

    it 'should allow the start_date to be before the end_date' do
      expect(sprint).to be_valid
    end

    it 'should not allow the start_date to be after the end_date' do
      sprint.update_attribute(:end_date, '2015-03-09')
      expect(sprint).to_not be_valid
      expect(sprint.errors[:end_date]).to eq(["must be after Start date"])
    end

    it 'should not allow the start_date to equal the end_date' do
      sprint.update_attribute(:end_date, '2016-03-09')
      expect(sprint).to_not be_valid
      expect(sprint.errors[:end_date]).to eq(["must be after Start date"])
    end
  end
end
