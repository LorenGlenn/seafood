class Dish < ApplicationRecord
  has_many :reviews
  acts_as_votable

  validates_presence_of :name
  validates_presence_of :image
  validates_presence_of :cost
end
