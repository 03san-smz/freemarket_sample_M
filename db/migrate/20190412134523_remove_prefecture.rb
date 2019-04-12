class RemovePrefecture < ActiveRecord::Migration[5.0]
  def change
    remove_column :items, :prefecture_id
  end
end
