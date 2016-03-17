class Developer < ActiveRecord::Base
  validates :name, presence: true
  validates :dev_type, inclusion: { in: %w(full_time part_time special_guest),
    message: "must be either 'Part Time', 'Full Time', or 'Special Guest'"}

  has_many :hours
  has_many :clients, through: :hours
  has_and_belongs_to_many :sprints
end