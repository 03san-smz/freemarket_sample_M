class RenameColumnUser < ActiveRecord::Migration[5.0]
  def change
    rename_column :users, :sales_mony_id, :sales_money_id
  end
end
