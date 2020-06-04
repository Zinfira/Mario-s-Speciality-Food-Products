require 'rails_helper'

describe "the add a product process" do
  it "adds a new product" do
    visit products_path
    click_link 'Create new product'
    fill_in 'Name', :with => 'chocolate milk'
    fill_in 'Cost', :with => '2'
    fill_in 'Country of origin', :with => 'united states'
    click_on 'Create Product'
    click_link 'Chocolate Milk'
    click_link 'Add a review'
    fill_in 'Author', :with => 'Zinfira'
    fill_in 'Content body', :with => 'I am in love with chocolate milk. I always use it with cold cereal for my breakfast. Soooooo goooood!'
    fill_in 'Rating', :with => 5
    click_on 'Create Review'
    expect(page).to have_content 'Zinfira'
  end

  it "gives an error when no name is entered" do
    visit products_path
    click_link 'Create new product'
    fill_in 'Name', :with => 'chocolate milk'
    fill_in 'Cost', :with => '2'
    fill_in 'Country of origin', :with => 'united states'
    click_on 'Create Product'
    click_link 'Chocolate Milk'
    click_link 'Add a review'
    click_on 'Create Review'
    expect(page).to have_content "Author can't be blank"
  end
end