class CreatePayments < ActiveRecord::Migration[5.0]
  def change
    create_table :payments do |t|
      t.string     :payment, null: false
      t.references :user,    null: false, foreign_key: true
      t.timestamps
    end
  end
end
