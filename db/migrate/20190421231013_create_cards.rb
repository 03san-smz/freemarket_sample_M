class CreateCards < ActiveRecord::Migration[5.0]
  def change
    create_table :cards do |t|
      t.string :number, null: false
      t.string :exp_month, null: false
      t.string :exp_year, null: false
      t.string :cvc_code, null: false
      t.references :mypage, foreign_key: true
      t.timestamps
    end
  end
end