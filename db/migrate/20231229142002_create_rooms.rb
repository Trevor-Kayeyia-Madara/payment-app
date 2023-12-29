class CreateRooms < ActiveRecord::Migration[7.1]
  def change
    create_table :rooms do |t|
      t.string :room_type
      t.integer :guest_capacity
      t.decimal :rates
      t.date :arrival_date
      t.date :departure_date
      t.integer :number_of_nights
      t.string :room_status

      t.timestamps
    end
  end
end
