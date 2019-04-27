class CreateMypages < ActiveRecord::Migration[5.0]
  def change
    create_table :mypages do |t|
      t.string :name, null: false, unique: true, index: true
      t.references :user, foreign_key: true
      t.timestamps
    end
  end
end
