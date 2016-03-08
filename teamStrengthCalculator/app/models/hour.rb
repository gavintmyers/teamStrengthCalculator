class Hour < ActiveRecord::Base
	validates :number_of_hours, numericality: { greater_than: 0 }
	validates :client_id
	validates :developer_id
	validates :sprint_id
	
  belongs_to :sprint

  has_one :client
  has_one :developer
end
