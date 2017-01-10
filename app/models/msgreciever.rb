class Msgreciever < ApplicationRecord
  # Direct associations

  has_many   :messages,
             :foreign_key => "reciever_id",
             :dependent => :destroy

  belongs_to :guest

  belongs_to :host

  # Indirect associations

  # Validations

end
