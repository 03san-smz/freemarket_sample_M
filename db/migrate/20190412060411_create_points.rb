class CreatePoints < ActiveRecord::Migration[5.0]
  def change
    create_table :points do |t|
      t.integer     :point, null: false
      t.references  :user,  null: false, foreign_key: true
      t.timestamps
    end
  end
end
