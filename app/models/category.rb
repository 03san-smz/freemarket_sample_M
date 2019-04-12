class Category < ApplicationRecord
  has_many   :items, dependent: :destroy
  belongs_to :parent,   class_name: :Category
  has_many   :children, class_name: :Category, foreign_key: :parent_id, dependent: :destroy
end