class AddUser < ActiveRecord::Migration[5.0]
  def change
    add_foreign_key :users, :cards, column: :card_id
    add_foreign_key :users, :payments, column: :payment_id
    add_foreign_key :users, :points, column: :point_id
    add_foreign_key :users, :sales_moneys, column: :sales_mony_id
  end
end
