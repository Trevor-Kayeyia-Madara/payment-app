class CreateGuests < ActiveRecord::Migration[7.1]
  def change
    create_table :guests do |t|
      t.string :guest_folio
      t.string :guest_no
      t.string :first_name
      t.string :surname
      t.string :email
      t.string :telephone_number
      t.string :room_type

      t.timestamps
    end
  end
end
