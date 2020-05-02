class CreateAccomodations < ActiveRecord::Migration[5.2]
  def change
    create_table :accomodations do |t|
      t.integer :available_beds
      t.integer :price
      t.boolean :has_wifi
      t.text :description
      t.text :welcome_message
      t.references :admin, index: true
      t.timestamps
    end
  end
end
