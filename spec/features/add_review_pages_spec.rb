require 'rails_helper'

describe "the add a review process" do
  it "adds a new review" do
    FactoryGirl.create(:admin)
    dish = FactoryGirl.create(:dish)
    visit new_user_session_path
    fill_in 'Email', :with => 'testemail@email.com'
    fill_in 'Password', :with => 123123
    click_on 'Log in'
    FactoryGirl.create(:dish)
    visit new_dish_review_path(dish)
    fill_in 'review', :with => 'Yummy!'
    click_on 'Save'
    expect(page).to have_content 'Yummy!'
  end

  it "gives error when no content is entered" do
    FactoryGirl.create(:admin)
    dish = FactoryGirl.create(:dish)
    visit new_user_session_path
    fill_in 'Email', :with => 'testemail@email.com'
    fill_in 'Password', :with => 123123
    click_on 'Log in'
    visit new_dish_review_path(dish)
    fill_in 'review', :with => ''
    click_on 'Save'
    expect(page).to_not have_content 'Yummy!'
  end
end
