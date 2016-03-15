class Hour < ActiveRecord::Base
  validates :number_of_hours, numericality: { greater_than: 0 }
	validates :client_id, presence: true
	validates :developer_id, presence: true
	validates :sprint_id, presence: true

  belongs_to :sprint
  belongs_to :client
  belongs_to :developer
end
