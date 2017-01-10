class CreateMsgsenders < ActiveRecord::Migration
  def change
    create_table :msgsenders do |t|
      t.integer :host_id
      t.integer :guest_id

      t.timestamps

    end
  end
end
