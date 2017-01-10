class Guestreview < ApplicationRecord
  mount_uploader :photos, PhotoUploader

  # Direct associations

  belongs_to :booking

  belongs_to :guest

  belongs_to :host

  # Indirect associations

  # Validations

end
