class AddAddressFormattedAddressToListing < ActiveRecord::Migration[5.0]
  def change
    add_column :listings, :address_formatted_address, :string
  end
end
