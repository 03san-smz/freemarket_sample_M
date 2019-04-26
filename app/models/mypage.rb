class Mypage < ApplicationRecord
  belongs_to :user
  has_one :identification
  has_many :cards
  has_many :sales
  has_many :transactions
  has_many :item

  # validates追加予定
end