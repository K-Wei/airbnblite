class CreateGuests < ActiveRecord::Migration
  def change
    create_table :guests do |t|
      t.integer :user_id

      t.timestamps

    end
  end
end
