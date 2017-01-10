class AddAddressLongitudeToListing < ActiveRecord::Migration[5.0]
  def change
    add_column :listings, :address_longitude, :float
  end
end
