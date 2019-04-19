class RemovePaymentsFromUsers < ActiveRecord::Migration[5.0]
  def change
    remove_reference :users, :payment, foreign_key: true
  end
end
