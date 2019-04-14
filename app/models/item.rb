class Item < ApplicationRecord
  extend ActiveHash::Associations::ActiveRecordExtensions
  belongs_to_active_hash :prefecture
  belongs_to :user
  belongs_to :category
  belongs_to :brand
  belongs_to :size
  has_many   :images,     dependent: :destroy
  has_many   :commensts,  dependent: :destroy
  has_one    :deliveries, dependent: :destroy
end
