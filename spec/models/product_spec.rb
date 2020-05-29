require 'rails_helper'

describe Product do
  it { should have_many(:reviews) }
  it { should validate_presence_of :name }
  it { should validate_presence_of :country_of_origin }
  it { should validate_presence_of :cost }
  
  it("titleizes the name of a product") do
    product = Product.create({name: "cold cereal", country_of_origin: "united states", cost: 5})
    expect(product.name()).to(eq("Cold Cereal"))
    expect(product.country_of_origin()).to(eq("United States"))
  end
end