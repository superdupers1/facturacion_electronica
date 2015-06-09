class FileDescription < ActiveRecord::Base
  belongs_to :document
  belongs_to :product

  validates :cantidad, presence: true
  validates :unit, presence: true
  validates :description, presence: true
  validates :code, presence: true
  validates :price, presence: true
  validates :amount, presence: true
end
