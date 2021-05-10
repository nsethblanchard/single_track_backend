class CreateCustomers < ActiveRecord::Migration[6.1]
  def change
    create_table :customers do |t|
      t.references :store, null: false, foreign_key: true
      t.string :name
      t.string :email
      t.string :phone
      t.string :stravaURL
      t.string :bikeStyle

      t.timestamps
    end
  end
end
