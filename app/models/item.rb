class Item < ApplicationRecord
  has_many :sales
  has_many :transactions
  # validates追加予定
end
