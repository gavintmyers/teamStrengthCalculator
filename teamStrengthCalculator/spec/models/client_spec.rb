require 'rails_helper'

RSpec.describe Client, type: :model do
  context 'validations' do
    let(:client) { FactoryGirl.create(:client, name: "Yuri Gagarin") }

    it 'should allow for a named client' do
      expect(client).to be_valid
    end
  end
end
