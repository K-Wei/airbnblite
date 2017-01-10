class Msgsender < ApplicationRecord
  # Direct associations

  has_many   :messages,
             :foreign_key => "sender_id",
             :dependent => :destroy

  belongs_to :guest

  belongs_to :host

  # Indirect associations

  # Validations

end
