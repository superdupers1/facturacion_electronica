class Product < ActiveRecord::Base
  validates :code, presence: true
  validates :unit, presence: true
  validates :description, presence: true
  validates :price, presence: true
end
