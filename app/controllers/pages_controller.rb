class PagesController < ApplicationController
  before_action :authorized, only: [:secret]

  def secret
  end
end
