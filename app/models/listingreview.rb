class Listingreview < ApplicationRecord
  mount_uploader :photos, PhotoUploader

  # Direct associations

  belongs_to :booking

  belongs_to :listing

  belongs_to :guest

  # Indirect associations

  # Validations

end
