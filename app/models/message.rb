class Message < ApplicationRecord
  # Direct associations

  belongs_to :reciever,
             :class_name => "Msgreciever"

  belongs_to :sender,
             :class_name => "Msgsender"

  # Indirect associations

  # Validations

end
