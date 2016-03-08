class Client < ActiveRecord::Base

  validates :name, presence: true

  belongs_to :hour

end
