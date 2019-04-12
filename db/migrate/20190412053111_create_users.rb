class CreateUsers < ActiveRecord::Migration[5.0]
  def change
    create_table :users do |t|
      t.string      :nickname,  null: false, unique: true
      t.string      :email,     null: false, unique: true
      t.string      :password,  null: false
      t.text        :introduction
      t.date        :bithday,   null: false
      t.string      :evaluation
      t.references  :card
      t.references  :payment
      t.references  :point
      t.references  :sales_mony
      t.timestamps
    end
  end
end
