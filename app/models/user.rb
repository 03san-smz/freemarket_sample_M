class User < ApplicationRecord
  has_many :items,        dependent: :destroy
  has_many :comments,     dependent: :destroy
  has_one  :cards,        dependent: :destroy
  has_one  :points,       dependent: :destroy
  has_one  :sales_monies, dependent: :destroy
  has_many :payments,     dependent: :destroy
  has_one  :addresses,    dependent: :destroy
  has_one  :profiles,     dependent: :destroy
end
