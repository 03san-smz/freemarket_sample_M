class CreateCategories < ActiveRecord::Migration[5.0]
  def change
    create_table :categories do |t|
      t.string      :category_name, null: false
      t.references  :item,          null: false, foreign_key: true
      t.references  :parent
      t.timestamps
    end
  end
end
