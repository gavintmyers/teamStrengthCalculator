class Developer < ActiveRecord::Base
  validates :name, :dev_type, presence: true

  belongs_to :hour
end
