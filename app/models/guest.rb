class Guest < ApplicationRecord
  # Direct associations

  has_many   :msgrecievers,
             :dependent => :destroy

  belongs_to :user

  # Indirect associations

  # Validations

end
