class CreateSales < ActiveRecord::Migration[5.0]
  def change
    create_table :sales do |t|
      t.integer  "prefecture_id"
      t.datetime "created_at",    null: false
      t.datetime "updated_at",    null: false
    end
  end
end
