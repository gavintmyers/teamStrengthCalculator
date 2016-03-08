class Hour < ActiveRecord::Base
	validates :number_of_hours, numericality: { greater_than: 0 }
end
