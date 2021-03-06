Rails.application.routes.draw do
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  
  get "/owner" => "owner#index"
  get "/invoice" => "owner#invoice"
  get "/orderdash" => "owner#order"
  get "/menusdash" => "owner#menus"
  get "/menuactive" => "owner#active"
  get "/signin" => "sessions#new", as: :new_sessions
  post "/signin" => "sessions#create", as: :sessions
  get"/clerkdash" => "owner#clerk"
  get"/salesdash" => "owner#sales"
  get "/orderreport" => "owner#report"
  get"/userdash" => "owner#user"
  patch"/menuhelpers" => "menuhelpers#update"
  get"/menudelete" => "menus#del"
  delete"/destroyclerk"=>"owner#deleteclerk"
  post "/users/clerk" => "users#clerk"
  get "/signout" => "sessions#destroy", as: :destroy_session
  resources :categories
  resources :users
  resources :sessions
  resources :menuitems
  resources :owner
  resources :menuhelpers
  resources :cart
  resources :menus
  resources :dashboard
  root "users#index"
end
