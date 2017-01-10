class CreateListingreviews < ActiveRecord::Migration
  def change
    create_table :listingreviews do |t|
      t.integer :booking_id
      t.integer :listing_id
      t.integer :review_title
      t.integer :accuracy
      t.integer :communication
      t.integer :cleanliness
      t.integer :location
      t.integer :checkin
      t.integer :value
      t.text :review_content
      t.string :photos
      t.integer :guest_id

      t.timestamps

    end
  end
end
