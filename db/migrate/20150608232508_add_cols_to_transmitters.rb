class AddColsToTransmitters < ActiveRecord::Migration
  def change
    add_column :transmitters, :document_type, :string
    add_column :transmitters, :expedition_place, :string
    add_column :transmitters, :tax_regime, :string
  end
end
