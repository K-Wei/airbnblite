class CreateMsgrecievers < ActiveRecord::Migration
  def change
    create_table :msgrecievers do |t|
      t.integer :host_id
      t.integer :guest_id

      t.timestamps

    end
  end
end
