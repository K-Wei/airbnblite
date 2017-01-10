ActiveAdmin.register Listingreview do

 permit_params :booking_id, :listing_id, :review_title, :accuracy, :communication, :cleanliness, :location, :checkin, :value, :review_content, :photos, :guest_id

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
