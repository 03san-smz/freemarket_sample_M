class EditColumn < ActiveRecord::Migration[5.0]
  def change
    change_column_null :addresses, :prefecture_id,   false
    change_column_null :items, :product_name,        false
    change_column_null :items, :price,               false
    change_column_null :items, :product_description, false
    change_column_null :items, :category_id,         false
    change_column_null :items, :size_id,             false
    change_column_null :items, :product_state,       false
    change_column_null :items, :trade_state,         false
    change_column_null :items, :listing_date,        false
    change_column_null :items, :brand_id,            false
    change_column_null :items, :delivery_id,         false
    change_column_null :items, :image_id,            false
    change_column_null :items, :comment_id,          false
    change_column_null :items, :user_id,             false
    change_column_null :items, :prefecture_id,       false

    remove_column :items, :name

    add_foreign_key :items, :categories,  column: :category_id
    add_foreign_key :items, :sizes,       column: :size_id
    add_foreign_key :items, :brands,      column: :brand_id
    add_foreign_key :items, :deliveries,  column: :delivery_id
    add_foreign_key :items, :item_images, column: :image_id
    add_foreign_key :items, :comments,    column: :comment_id
    add_foreign_key :items, :users,       column: :user_id
  end
end
