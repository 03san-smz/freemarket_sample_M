class CreateDeliveries < ActiveRecord::Migration[5.0]
  def change
    create_table :deliveries do |t|
      t.integer    :delivery_cost,           null: false
      t.string     :regional_delivery,       null: false
      t.string     :delivery_method,         null: false
      t.integer    :delivery_days,           null: false
      t.references :item, foreign_key: true, null: false
      t.timestamps
    end
  end
end
