class CreateBookings < ActiveRecord::Migration
  def change
    create_table :bookings do |t|
      t.integer :listing_id
      t.integer :guest_id
      t.float :optionalunique_price

      t.timestamps

    end
  end
end
