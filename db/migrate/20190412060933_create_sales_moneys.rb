class CreateSalesMoneys < ActiveRecord::Migration[5.0]
  def change
    create_table :sales_moneys do |t|
      t.integer    :sales_money, null: false
      t.references :user,        null: false, foreign_key: true
      t.timestamps
    end
  end
end
