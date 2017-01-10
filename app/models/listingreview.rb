class Listingreview < ApplicationRecord
  # Direct associations

  belongs_to :listing

  belongs_to :guest

  # Indirect associations

  # Validations

end
