require 'rails_helper'

RSpec.describe User, type: :model do
  it { should validate_presence_of :email }

  it "sends an email when the user is created" do
    user = FactoryGirl.create(:admin)
    ActionMailer::Base.deliveries.last.to.should eq [user.email]
  end
end
