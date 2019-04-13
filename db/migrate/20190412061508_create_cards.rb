class CreateCards < ActiveRecord::Migration[5.0]
  def change
    create_table :cards do |t|
      t.integer    :number,        null: false
      t.integer    :valid_month,   null: false
      t.integer    :vaild_year,    null: false
      t.integer    :security_code, null: false
      t.references :user,          null: false, foreign_key: true
      t.timestamps
    end
  end
end
