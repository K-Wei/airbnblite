class Guest < ApplicationRecord
  # Direct associations

  has_many   :guestreviews,
             :dependent => :destroy

  has_many   :msgsenders,
             :dependent => :destroy

  has_many   :msgrecievers,
             :dependent => :destroy

  belongs_to :user

  # Indirect associations

  # Validations

end
