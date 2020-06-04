class Product < ApplicationRecord
  has_many :reviews, dependent: :destroy
  validates :name, presence: true
  validates :country_of_origin, presence: true
  validates :cost, presence: true
  before_save(:titleize_product)
  scope :made_in_the_usa, -> { where(country_of_origin: "Usa") }

  private
    def titleize_product
      self.name = self.name.titleize
      self.country_of_origin = self.country_of_origin.titleize
    end
end