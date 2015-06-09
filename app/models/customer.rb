class Customer < ActiveRecord::Base
  validates :rfc, format: { with: /\A[A-ZÑ&]{3,4}[0-9]{2}[0-1][0-9][0-3][0-9]([A-Z0-9]{3})?\z/i, message: 'no es un formato de RFC válido' }
  validates :phone, format:{ with: /\A[0-9,\-,\s]*\z/, message: 'esta ingesando caracteres no validos' }
end
