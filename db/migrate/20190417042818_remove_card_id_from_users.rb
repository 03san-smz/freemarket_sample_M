class RemoveCardIdFromUsers < ActiveRecord::Migration[5.0]
  def change
    remove_reference :users, :card, index: true
  end
end
