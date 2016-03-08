class Hour < ActiveRecord::Base
	validates :number_of_hours, numericality: { greater_than: 0 }

  belongs_to :sprint

  has_one :client
  has_one :developer
end
