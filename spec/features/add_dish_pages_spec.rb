require 'rails_helper'

describe "the add a dish process" do
  it "adds a new dish" do
    admin = FactoryGirl.create(:admin)
    visit new_user_session_path
    fill_in 'Email', :with => 'testemail@email.com'
    fill_in 'Password', :with => 123123
    click_on 'Log in'
    visit new_dish_path
    fill_in 'name', :with => 'food'
    fill_in 'cost', :with => 3
    fill_in 'image url', :with => '.png'
    click_on 'Save'
    expect(page).to have_content 'food'
  end

  it "gives error when no name is entered" do
    admin = FactoryGirl.create(:admin)
    visit new_user_session_path
    fill_in 'Email', :with => 'testemail@email.com'
    fill_in 'Password', :with => 123123
    click_on 'Log in'
    visit new_dish_path
    fill_in 'name', :with => ''
    fill_in 'cost', :with => 3
    fill_in 'image url', :with => '.png'
    click_on 'Save'
    expect(page).to have_content 'Dish not added!'
  end
end
