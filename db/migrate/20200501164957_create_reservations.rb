class CreateReservations < ActiveRecord::Migration[5.2]
  def change
    create_table :reservations do |t|
      t.datetime :start_date
      t.datetime :end_date
      t.integer :duration
      t.integer :full_price
      t.references :guest, index: true
      t.timestamps
    end
  end
end
