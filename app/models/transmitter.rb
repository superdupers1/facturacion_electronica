class Transmitter < ActiveRecord::Base
  validates :rfc, format: { with: /\A[A-ZÑ&]{3,4}[0-9]{2}[0-1][0-9][0-3][0-9]([A-Z0-9]{3})?\z/i, message: 'no es un formato de RFC válido' }
  validates :phone, format:{ with: /\A[0-9,\-,\s]*\z/, message: 'esta ingesando caracteres no validos' }

  validates :rfc, presence: true
  validates :name, presence: true
  validates :street, presence: true
  validates :number, presence: true
  validates :neighborhood, presence: true
  validates :zc, presence: true
  validates :city, presence: true
  validates :state, presence: true
  validates :country, presence: true
  validates :phone, presence: true
end
