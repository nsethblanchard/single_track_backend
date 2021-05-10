class CreateStores < ActiveRecord::Migration[6.1]
  def change
    create_table :stores do |t|
      t.string :name
      t.string :phone
      t.string :city

      t.timestamps
    end
  end
end
