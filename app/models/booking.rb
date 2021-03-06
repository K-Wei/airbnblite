class Booking < ApplicationRecord
  # Direct associations

  has_many   :requests,
             :dependent => :destroy

  has_one    :guestreview,
             :dependent => :destroy

  has_one    :listingreview,
             :dependent => :destroy

  belongs_to :listing

  # Indirect associations

  # Validations

end
