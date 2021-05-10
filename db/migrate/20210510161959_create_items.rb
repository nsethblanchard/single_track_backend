class CreateItems < ActiveRecord::Migration[6.1]
  def change
    create_table :items do |t|
      t.string :description
      t.integer :price
      t.datetime :purchaseDate
      t.string :bikeType
      t.integer :avgMileage
      t.references :customer, null: false, foreign_key: true

      t.timestamps
    end
  end
end
