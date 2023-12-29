class Transaction < ApplicationRecord
    belongs_to :guest
  
    validates :guest_folio, :transaction_type, :accommodation_account, :extras, :total, presence: true
  end