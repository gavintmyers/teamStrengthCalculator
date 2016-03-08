class Developer < ActiveRecord::Base

  validates :name, :dev_type, presence: true

end
