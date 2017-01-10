class Listing < ApplicationRecord
  mount_uploader :photos, PhotoUploader

  # Direct associations

  has_many   :bookmarks,
             :dependent => :destroy

  has_many   :listingreviews,
             :dependent => :destroy

  has_many   :bookings,
             :dependent => :destroy

  belongs_to :host

  # Indirect associations

  # Validations

end
