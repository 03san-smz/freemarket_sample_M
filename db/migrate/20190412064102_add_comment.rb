class AddComment < ActiveRecord::Migration[5.0]
  def change
    add_foreign_key :comments, :users, column: :user_id
  end
end
