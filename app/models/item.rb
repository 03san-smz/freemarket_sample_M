class Item < ApplicationRecord
  has_many :sales
  has_many :transactions
  belongs_to :mypage
  # validates追加予定
end
