class CreateListings < ActiveRecord::Migration
  def change
    create_table :listings do |t|
      t.string :title
      t.boolean :room_or_home
      t.string :photos
      t.text :description
      t.integer :bedrooms
      t.integer :bathrooms
      t.integer :max_occupancy
      t.string :city
      t.string :neighborhood
      t.string :address
      t.text :policies
      t.float :default_price
      t.integer :host_id
      t.datetime :nights_available

      t.timestamps

    end
  end
end
