class Room < ApplicationRecord
    has_many :guests
  
    validates :room_type, :guest_capacity, :rates, :arrival_date, :departure_date, :number_of_nights, :room_status, presence: true
  end
  