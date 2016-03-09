class Developer < ActiveRecord::Base
  validates :name, presence: true
  validates :dev_type, inclusion: { in: %w(full_time part_time special_guest),
    message: "must be either 'Part Time', 'Full Time', or 'Special Guest'"}
  
  belongs_to :hour
end
