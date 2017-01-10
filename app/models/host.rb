class Host < ApplicationRecord
  # Direct associations

  has_many   :guestreviews,
             :dependent => :destroy

  has_many   :listings,
             :dependent => :destroy

  has_many   :msgrecievers,
             :dependent => :destroy

  has_many   :msgsenders,
             :dependent => :destroy

  belongs_to :user

  # Indirect associations

  # Validations

end
