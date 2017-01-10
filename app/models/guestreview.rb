class Guestreview < ApplicationRecord
  # Direct associations

  belongs_to :guest

  belongs_to :host

  # Indirect associations

  # Validations

end
