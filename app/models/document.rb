class Document < ActiveRecord::Base
  belongs_to :customer
  belongs_to :transmitter
  has_many :FileDescription, dependent: :destroy

  validates :folio, presence: true
  validates :customer_id, presence: true
  validates :subtotal, presence: true
  validates :iva, presence: true
  validates :total, presence: true
  validates :written_amount, presence: true
  validates :payment_method, presence: true
  validates :transmitter_id, presence: true
  validates :payment_way, presence: true
  validates :account_payment, presence: true, format:{with: /\A[0-9]{4}\z/, message: 'deben ser 4 numeros'}
end
