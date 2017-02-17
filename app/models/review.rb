class Review < ApplicationRecord
  belongs_to :dish
  validates_presence_of :content
end
