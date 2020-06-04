class LandingPageController < ApplicationController
  def index
    @made_in_the_usa = Product.made_in_the_usa
    @three_most_recent = Product.three_most_recent
    render :index
  end
end