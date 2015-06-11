class AddTransmitterToDocumnets < ActiveRecord::Migration
  def change
    add_reference :documents, :transmitter, index: true, foreign_key: true
  end
end
