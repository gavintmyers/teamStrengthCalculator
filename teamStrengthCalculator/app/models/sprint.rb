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

	def sprint_developers(type, client)
	  Developer.all.select{ |dev| dev.sprints.include?(self) && dev.dev_type = type && dev.clients.include?(client) }
	end

	def total_hours(type, client)
	    dev_ids = sprint_developers(type, client).pluck(:id)

	    Hour.where(developer_id: dev_ids).pluck(:number_of_hours).sum
	end

	def team_strength(type, client) # Does not account for Part Time Multiplier
	  dev_ids = sprint_developers(type, client).pluck(:id)
	  total_hours = Hour.where(developer_id: dev_ids).pluck(:number_of_hours).sum

	  ( total_hours.to_f / ( dev_ids.count * self.iteration_length ) )
	end

	def team_strength_total(client)
	  FT = team_strength('full_time', client)
	  PT = team_strength('part_time', client)
	  SGB = team_strength('special_guest', client)
	  PTM = self.part_time_multiplier

	  ( FT + PT*PTM )/2 + SGB
	end
end