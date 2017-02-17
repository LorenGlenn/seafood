require 'rails_helper'

RSpec.describe Dish, type: :model do
  it { should validate_presence_of :name }
  it { should validate_presence_of :cost }
  it { should validate_presence_of :image }
  it { should have_many :reviews }
end
