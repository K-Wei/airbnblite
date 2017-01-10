ActiveAdmin.register Listing do

 permit_params :title, :room_or_home, :photos, :description, :bedrooms, :bathrooms, :max_occupancy, :city, :neighborhood, :address, :policies, :default_price, :host_id, :nights_available

# See permitted parameters documentation:
# https://github.com/activeadmin/activeadmin/blob/master/docs/2-resource-customization.md#setting-up-strong-parameters
#
# permit_params :list, :of, :attributes, :on, :model
#
# or
#
# permit_params do
#   permitted = [:permitted, :attributes]
#   permitted << :other if params[:action] == 'create' && current_user.admin?
#   permitted
# end


end
