class CreateSales < ActiveRecord::Migration[5.0]
  def change
    create_table :sales do |t|
      t.integer :prefecture_id

      t.timestamps
    end
  end
end
