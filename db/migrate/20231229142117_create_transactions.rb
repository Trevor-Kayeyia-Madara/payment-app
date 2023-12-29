class CreateTransactions < ActiveRecord::Migration[7.1]
  def change
    create_table :transactions do |t|
      t.string :guest_folio
      t.string :transaction_type
      t.decimal :accommodation_account
      t.decimal :extras
      t.decimal :total

      t.timestamps
    end
  end
end
