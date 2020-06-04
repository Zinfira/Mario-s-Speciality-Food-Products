class LandingPageController < ApplicationController
  def index
    @made_in_the_usa = Product.made_in_the_usa
    @three_most_recent = Product.three_most_recent
    @most_reviews = Product.most_reviews
    render :index
  end
end