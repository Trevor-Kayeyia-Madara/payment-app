class AddGuestToTransaction < ActiveRecord::Migration[7.1]
  def change
    add_reference :transactions, :guest, null: false, foreign_key: true
  end
end
