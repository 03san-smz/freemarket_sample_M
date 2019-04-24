class Transaction < ApplicationRecord
  belongs_to :mypage
  belongs_to :item
end
