require 'rails_helper'

describe "the add a product process" do
  it "adds a new product" do
    visit products_path
    click_link 'Create new product'
    fill_in 'Name', :with => 'chocolate milk'
    fill_in 'Cost', :with => '2'
    fill_in 'Country of origin', :with => 'united states'
    click_on 'Create Product'
    expect(page).to have_content 'Chocolate Milk'
  end

  it "gives an error when no name is entered" do
    visit new_product_path
    click_on 'Create Product'
    expect(page).to have_content "Name can't be blank"
  end
end