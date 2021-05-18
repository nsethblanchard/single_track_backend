class CreateItems < ActiveRecord::Migration[6.1]
  def change
    create_table :items do |t|
      t.string :description
      t.integer :price
      t.datetime :purchase_date
      t.string :bike_type
      t.integer :avg_mileage
      t.references :customer, null: false, foreign_key: true

      t.timestamps
    end
  end
end
