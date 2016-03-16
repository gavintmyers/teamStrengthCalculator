class Sprint < ActiveRecord::Base

	validate :start_before_end
	validates :iteration_length, presence: true
	validates :part_time_multiplier, presence: true

	has_many :hours
	has_and_belongs_to_many :clients
	has_and_belongs_to_many :developers

	accepts_nested_attributes_for :hours

	def start_before_end
		if self.start_date >= self.end_date
      errors.add(:end_date, "must be after Start date")
    end
	end
end