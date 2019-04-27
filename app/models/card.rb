class Card < ApplicationRecord
  belongs_to :mypage

  validates :number, presence: true, length: { maximum: 16 }
  validates :exp_month, presence: true
  validates :exp_year, presence: true
  validates :cvc_code, presence: true, length: { minimum: 3 }
end
