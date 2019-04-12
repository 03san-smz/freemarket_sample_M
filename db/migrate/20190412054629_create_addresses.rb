class CreateAddresses < ActiveRecord::Migration[5.0]
  def change
    create_table :addresses do |t|
      t.string      :postal_code,             null: false
      t.integer     :building_number,         null: false
      t.integer     :prefecture_id
      t.string      :city,                    null: false
      t.string      :block,                   null: false
      t.string      :building_number
      t.integer     :phone_number,            null: false
      t.references  :user, foreign_key: true ,null: false
      t.timestamps
    end
  end
end
