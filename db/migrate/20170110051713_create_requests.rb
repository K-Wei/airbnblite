class CreateRequests < ActiveRecord::Migration
  def change
    create_table :requests do |t|
      t.integer :booking_id
      t.integer :guest_id
      t.boolean :acceptance
      t.text :guest_introduction

      t.timestamps

    end
  end
end
