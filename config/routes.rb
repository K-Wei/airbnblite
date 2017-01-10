Rails.application.routes.draw do
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
