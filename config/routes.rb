Rails.application.routes.draw do
  devise_for :admin_users, ActiveAdmin::Devise.config
  ActiveAdmin.routes(self)
  root :to => "hosts#index"
  # Routes for the Bookmark resource:
  # CREATE
  get "/bookmarks/new", :controller => "bookmarks", :action => "new"
  post "/create_bookmark", :controller => "bookmarks", :action => "create"

  # READ
  get "/bookmarks", :controller => "bookmarks", :action => "index"
  get "/bookmarks/:id", :controller => "bookmarks", :action => "show"

  # UPDATE
  get "/bookmarks/:id/edit", :controller => "bookmarks", :action => "edit"
  post "/update_bookmark/:id", :controller => "bookmarks", :action => "update"

  # DELETE
  get "/delete_bookmark/:id", :controller => "bookmarks", :action => "destroy"
  #------------------------------

  # Routes for the Listingreview resource:
  # CREATE
  get "/listingreviews/new", :controller => "listingreviews", :action => "new"
  post "/create_listingreview", :controller => "listingreviews", :action => "create"

  # READ
  get "/listingreviews", :controller => "listingreviews", :action => "index"
  get "/listingreviews/:id", :controller => "listingreviews", :action => "show"

  # UPDATE
  get "/listingreviews/:id/edit", :controller => "listingreviews", :action => "edit"
  post "/update_listingreview/:id", :controller => "listingreviews", :action => "update"

  # DELETE
  get "/delete_listingreview/:id", :controller => "listingreviews", :action => "destroy"
  #------------------------------

  # Routes for the Request resource:
  # CREATE
  get "/requests/new", :controller => "requests", :action => "new"
  post "/create_request", :controller => "requests", :action => "create"

  # READ
  get "/requests", :controller => "requests", :action => "index"
  get "/requests/:id", :controller => "requests", :action => "show"

  # UPDATE
  get "/requests/:id/edit", :controller => "requests", :action => "edit"
  post "/update_request/:id", :controller => "requests", :action => "update"

  # DELETE
  get "/delete_request/:id", :controller => "requests", :action => "destroy"
  #------------------------------

  # Routes for the Guestreview resource:
  # CREATE
  get "/guestreviews/new", :controller => "guestreviews", :action => "new"
  post "/create_guestreview", :controller => "guestreviews", :action => "create"

  # READ
  get "/guestreviews", :controller => "guestreviews", :action => "index"
  get "/guestreviews/:id", :controller => "guestreviews", :action => "show"

  # UPDATE
  get "/guestreviews/:id/edit", :controller => "guestreviews", :action => "edit"
  post "/update_guestreview/:id", :controller => "guestreviews", :action => "update"

  # DELETE
  get "/delete_guestreview/:id", :controller => "guestreviews", :action => "destroy"
  #------------------------------

  # Routes for the Msgreciever resource:
  # CREATE
  get "/msgrecievers/new", :controller => "msgrecievers", :action => "new"
  post "/create_msgreciever", :controller => "msgrecievers", :action => "create"

  # READ
  get "/msgrecievers", :controller => "msgrecievers", :action => "index"
  get "/msgrecievers/:id", :controller => "msgrecievers", :action => "show"

  # UPDATE
  get "/msgrecievers/:id/edit", :controller => "msgrecievers", :action => "edit"
  post "/update_msgreciever/:id", :controller => "msgrecievers", :action => "update"

  # DELETE
  get "/delete_msgreciever/:id", :controller => "msgrecievers", :action => "destroy"
  #------------------------------

  # Routes for the Msgsender resource:
  # CREATE
  get "/msgsenders/new", :controller => "msgsenders", :action => "new"
  post "/create_msgsender", :controller => "msgsenders", :action => "create"

  # READ
  get "/msgsenders", :controller => "msgsenders", :action => "index"
  get "/msgsenders/:id", :controller => "msgsenders", :action => "show"

  # UPDATE
  get "/msgsenders/:id/edit", :controller => "msgsenders", :action => "edit"
  post "/update_msgsender/:id", :controller => "msgsenders", :action => "update"

  # DELETE
  get "/delete_msgsender/:id", :controller => "msgsenders", :action => "destroy"
  #------------------------------

  # Routes for the Message resource:
  # CREATE
  get "/messages/new", :controller => "messages", :action => "new"
  post "/create_message", :controller => "messages", :action => "create"

  # READ
  get "/messages", :controller => "messages", :action => "index"
  get "/messages/:id", :controller => "messages", :action => "show"

  # UPDATE
  get "/messages/:id/edit", :controller => "messages", :action => "edit"
  post "/update_message/:id", :controller => "messages", :action => "update"

  # DELETE
  get "/delete_message/:id", :controller => "messages", :action => "destroy"
  #------------------------------

  # Routes for the Booking resource:
  # CREATE
  get "/bookings/new", :controller => "bookings", :action => "new"
  post "/create_booking", :controller => "bookings", :action => "create"

  # READ
  get "/bookings", :controller => "bookings", :action => "index"
  get "/bookings/:id", :controller => "bookings", :action => "show"

  # UPDATE
  get "/bookings/:id/edit", :controller => "bookings", :action => "edit"
  post "/update_booking/:id", :controller => "bookings", :action => "update"

  # DELETE
  get "/delete_booking/:id", :controller => "bookings", :action => "destroy"
  #------------------------------

  # Routes for the Listing resource:
  # CREATE
  get "/listings/new", :controller => "listings", :action => "new"
  post "/create_listing", :controller => "listings", :action => "create"

  # READ
  get "/listings", :controller => "listings", :action => "index"
  get "/listings/:id", :controller => "listings", :action => "show"

  # UPDATE
  get "/listings/:id/edit", :controller => "listings", :action => "edit"
  post "/update_listing/:id", :controller => "listings", :action => "update"

  # DELETE
  get "/delete_listing/:id", :controller => "listings", :action => "destroy"
  #------------------------------

  # Routes for the Guest resource:
  # CREATE
  get "/guests/new", :controller => "guests", :action => "new"
  post "/create_guest", :controller => "guests", :action => "create"

  # READ
  get "/guests", :controller => "guests", :action => "index"
  get "/guests/:id", :controller => "guests", :action => "show"

  # UPDATE
  get "/guests/:id/edit", :controller => "guests", :action => "edit"
  post "/update_guest/:id", :controller => "guests", :action => "update"

  # DELETE
  get "/delete_guest/:id", :controller => "guests", :action => "destroy"
  #------------------------------

  # Routes for the Host resource:
  # CREATE
  get "/hosts/new", :controller => "hosts", :action => "new"
  post "/create_host", :controller => "hosts", :action => "create"

  # READ
  get "/hosts", :controller => "hosts", :action => "index"
  get "/hosts/:id", :controller => "hosts", :action => "show"

  # UPDATE
  get "/hosts/:id/edit", :controller => "hosts", :action => "edit"
  post "/update_host/:id", :controller => "hosts", :action => "update"

  # DELETE
  get "/delete_host/:id", :controller => "hosts", :action => "destroy"
  #------------------------------

  devise_for :users
  # Routes for the User resource:
  # READ
  get "/users", :controller => "users", :action => "index"
  get "/users/:id", :controller => "users", :action => "show"


  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
