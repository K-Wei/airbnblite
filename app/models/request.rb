class Request < ApplicationRecord
  # Direct associations

  belongs_to :booking

  belongs_to :guest

  # Indirect associations

  # Validations

end
