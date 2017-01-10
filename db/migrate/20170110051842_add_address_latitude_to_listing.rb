class AddAddressLatitudeToListing < ActiveRecord::Migration[5.0]
  def change
    add_column :listings, :address_latitude, :float
  end
end
