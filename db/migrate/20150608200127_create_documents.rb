class CreateDocuments < ActiveRecord::Migration
  def change
    create_table :documents do |t|
      t.string :folio
      t.decimal :subtotal, precision: 15, scale: 2
      t.decimal :iva, precision: 15, scale: 2
      t.decimal :total, precision: 15, scale: 2
      t.string :written_amount
      t.string :payment_method
      t.string :account_payment
      t.references :customer, index: true, foreign_key: true

      t.timestamps null: false
    end
  end
end
