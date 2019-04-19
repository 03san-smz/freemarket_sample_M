class RemovePointFromUsers < ActiveRecord::Migration[5.0]
  def change
    remove_reference :users, :point, foreign_key: true
  end
end
