class AddCategory < ActiveRecord::Migration[5.0]
  def change
    add_foreign_key :categories, :categories, column: :parent_id
  end
end
