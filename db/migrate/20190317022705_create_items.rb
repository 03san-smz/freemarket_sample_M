class CreateItems < ActiveRecord::Migration[5.0]
  def change
    create_table :items do |t|
      t.text        :product_name
      t.integer     :price
      t.text        :product_description
      t.references  :category
      t.references  :size
      t.string      :product_state
      t.string      :trade_state
      t.string      :listing_date
      t.references  :brand
      t.references  :delivery
      t.references  :image
      t.references  :comment
      t.references  :user
      t.integer     :prefecture_id
      t.timestamps
    end
  end
end
