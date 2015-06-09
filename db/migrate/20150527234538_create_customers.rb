class CreateCustomers < ActiveRecord::Migration
  def change
    create_table :customers do |t|
      t.string :rfc
      t.string :name
      t.string :street
      t.string :number
      t.string :neighborhood
      t.integer :zc
      t.string :city
      t.string :state
      t.string :country
      t.string :phone

      t.timestamps null: false
    end
  end
end
