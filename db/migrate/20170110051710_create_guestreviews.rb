class CreateGuestreviews < ActiveRecord::Migration
  def change
    create_table :guestreviews do |t|
      t.integer :host_id
      t.integer :guest_id
      t.integer :overall_rating
      t.integer :booking_id
      t.text :review_content
      t.string :photos

      t.timestamps

    end
  end
end
