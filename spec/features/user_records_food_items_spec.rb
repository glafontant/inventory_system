require 'spec_helper'

feature "Recording individual food items", %Q{
  As a food service employee
  I want to receive inventory
  So that it can be recorded that we have food items
} do
  # Acceptance Criteria:

  # * I must specify a title, description, and quantity of the food item
  # * If I do not specify the required information, 
  # * I am prompted to fix errors and to resubmit
  # * If I specify the required information, my inventory entry is recorded.

  scenario "Recording the correct information" do
    visit '/inventory_systems/new'
    fill_in 'Title', with => 'Blueberries'
    fill_in 'Description', with => 'Organic and locally produced'
    fill_in 'Quantity', with => 12

    click_on 'Submit'
    expect(page).to have_content 'Inventory entry was successfully recorded'
  end

  scenario "Recording the correct information" do
    visit '/inventory_systems/new'
    fill_in 'Title', with => ''
    fill_in 'Description', with => ''
    fill_in 'Quantity', with => nil

    click_on 'Submit'
    expect(page).to_not have_content 'Inventory entry was successfully recorded'
    expect(page).to have_content 'Enter the required fields and resubmit'
  end
end


