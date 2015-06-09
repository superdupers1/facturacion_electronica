class CreateFileDescriptions < ActiveRecord::Migration
  def change
    create_table :file_descriptions do |t|
      t.integer :cantidad
      t.string :unit
      t.string :description
      t.string :code
      t.decimal :price, precision: 15, scale: 2
      t.decimal :amount, precision: 15, scale: 2
      t.references :document, index: true, foreign_key: true
      t.references :product, index: true, foreign_key: true

      t.timestamps null: false
    end
  end
end
