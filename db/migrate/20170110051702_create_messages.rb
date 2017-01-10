class CreateMessages < ActiveRecord::Migration
  def change
    create_table :messages do |t|
      t.integer :sender_id
      t.integer :reciever_id
      t.text :msg_content

      t.timestamps

    end
  end
end
