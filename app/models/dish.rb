class Dish < ApplicationRecord
  has_many :reviews
  acts_as_votable
end
