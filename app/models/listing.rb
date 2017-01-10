class Listing < ApplicationRecord
  # Direct associations

  has_many   :bookings,
             :dependent => :destroy

  belongs_to :host

  # Indirect associations

  # Validations

end
