Rails.application.routes.draw do
  # Routes for the Retailer resource:
  # CREATE
  get "/retailers/new", :controller => "retailers", :action => "new"
  post "/create_retailer", :controller => "retailers", :action => "create"

  # READ
  get "/retailers", :controller => "retailers", :action => "index"
  get "/retailers/:id", :controller => "retailers", :action => "show"

  # UPDATE
  get "/retailers/:id/edit", :controller => "retailers", :action => "edit"
  post "/update_retailer/:id", :controller => "retailers", :action => "update"

  # DELETE
  get "/delete_retailer/:id", :controller => "retailers", :action => "destroy"
  #------------------------------

  root to: "giftcards#index"

  # Routes for the Giftcard resource:
  # CREATE
  get "/giftcards/new", :controller => "giftcards", :action => "new"
  post "/create_giftcard", :controller => "giftcards", :action => "create"

  # READ
  get "/giftcards", :controller => "giftcards", :action => "index"
  get "/giftcards/:id", :controller => "giftcards", :action => "show"

  # UPDATE
  get "/giftcards/:id/edit", :controller => "giftcards", :action => "edit"
  post "/update_giftcard/:id", :controller => "giftcards", :action => "update"

  # DELETE
  get "/delete_giftcard/:id", :controller => "giftcards", :action => "destroy"
  #------------------------------

  # Routes for the Category resource:
  # CREATE

  get "/categories/new", :controller => "categories", :action => "new"
  post "/create_category", :controller => "categories", :action => "create"

  # READ
  get "/categories", :controller => "categories", :action => "index"
  get "/categories/:id", :controller => "categories", :action => "show"

  # UPDATE
  get "/categories/:id/edit", :controller => "categories", :action => "edit"
  post "/update_category/:id", :controller => "categories", :action => "update"

  # DELETE
  get "/delete_category/:id", :controller => "categories", :action => "destroy"
  #------------------------------

  # Routes for the Usage resource:
  # CREATE
  get "/usages/new", :controller => "usages", :action => "new"
  post "/create_usage", :controller => "usages", :action => "create"

  # READ
  get "/usages", :controller => "usages", :action => "index"
  get "/usages/:id", :controller => "usages", :action => "show"

  # UPDATE
  get "/usages/:id/edit", :controller => "usages", :action => "edit"
  post "/update_usage/:id", :controller => "usages", :action => "update"

  # DELETE
  get "/delete_usage/:id", :controller => "usages", :action => "destroy"
  #------------------------------

  # Routes for the Gifting resource:
  # CREATE
  get "/giftings/new", :controller => "giftings", :action => "new"
  post "/create_gifting", :controller => "giftings", :action => "create"

  # READ
  get "/giftings", :controller => "giftings", :action => "index"
  get "/giftings/:id", :controller => "giftings", :action => "show"

  # UPDATE
  get "/giftings/:id/edit", :controller => "giftings", :action => "edit"
  post "/update_gifting/:id", :controller => "giftings", :action => "update"

  # DELETE
  get "/delete_gifting/:id", :controller => "giftings", :action => "destroy"
  #------------------------------

  # Routes for the Giver resource:
  # CREATE
  get "/givers/new", :controller => "givers", :action => "new"
  post "/create_giver", :controller => "givers", :action => "create"

  # READ
  get "/givers", :controller => "givers", :action => "index"
  get "/givers/:id", :controller => "givers", :action => "show"

  # UPDATE
  get "/givers/:id/edit", :controller => "givers", :action => "edit"
  post "/update_giver/:id", :controller => "givers", :action => "update"

  # DELETE
  get "/delete_giver/:id", :controller => "givers", :action => "destroy"
  #------------------------------

  devise_for :users
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html


end
