class LandingPageController < ApplicationController
  def index
    @made_in_the_usa = Product.made_in_the_usa
    render :index
  end
end