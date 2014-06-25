class Neighborhood < ActiveRecord::Base
  has_many :locations, -> { order 'name' }
  validates_uniqueness_of :name
end
