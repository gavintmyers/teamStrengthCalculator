require 'rails_helper'

RSpec.describe Hour, type: :model do
  
	context 'validations for number_of_hours' do

    let(:sprint) { FactoryGirl.create(:sprint, start_date: '2016-03-09', end_date: '2017-03-09', iteration_length: 11, part_time_multiplier: 1.3) }
    let(:hour) { FactoryGirl.create(:hour, number_of_hours: 4, client_id: 1, developer_id: 1, sprint: sprint) }

    it 'should allow number_of_hours to be above zero' do
      expect(hour).to be_valid
    end

    it 'should not allow number_of_hours to be less than zero' do
      hour.update_attribute(:number_of_hours, -1)
      expect(hour).to_not be_valid
      expect(hour.errors[:number_of_hours]).to eq(["must be greater than 0"])
    end

    it 'should not allow number_of_hours to be zero' do
      hour.update_attribute(:number_of_hours, 0)
      expect(hour).to_not be_valid
      expect(hour.errors[:number_of_hours]).to eq(["must be greater than 0"])
    end
  end
end