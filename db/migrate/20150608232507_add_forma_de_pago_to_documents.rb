class AddFormaDePagoToDocuments < ActiveRecord::Migration
  def change
    add_column :documents, :payment_way, :string
  end
end
