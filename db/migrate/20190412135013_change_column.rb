class ChangeColumn < ActiveRecord::Migration[5.0]
  def change
    change_column :addresses, :prefecture_id, :string
    rename_column :deliveries, :regional_delivery, :prefecture_id
  end
end
