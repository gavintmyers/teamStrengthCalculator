class Client < ActiveRecord::Base
  validates :name, presence: true
  
  has_many :hours
  has_many :developers, through: :hours
  has_and_belongs_to_many :sprints
end
