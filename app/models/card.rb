class Card < ApplicationRecord
  has_one :user

  validates :number, presence: true, length: { maximum: 16 }
  validates :valid_month, presence: true
  validates :vaild_year, presence: true
  validates :security_code, presence: true, length: { minimum: 3 }
end