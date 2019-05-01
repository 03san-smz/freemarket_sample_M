class CreateIdentifications < ActiveRecord::Migration[5.0]
  def change
    create_table :identifications do |t|
      t.references :mypage, foreign_key: true
      t.timestamps
    end
  end
end
