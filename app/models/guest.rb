class Guest < ApplicationRecord
    belongs_to :room
    has_one :transaction
  
    validates :guest_folio, :guest_no, :first_name, :surname, :email, :telephone_number, :room_type, presence: true
  end
  