Rails.application.routes.draw do

  get "about", to: "about#index"

  get "password", to: "passwords#edit", as: :edit_password
  patch "password", to: "passwords#update"

  get "sign_up", to:"registrations#new"
  post "sign_up", to: "registrations#create"

  get "sign_in", to: "sessions#new"
  post "sign_in", to: "sessions#create"

  get "password_reset", to: "password_resets#new"
  post "password_reset", to: "password_resets#create"

  get "password_reset_edit", to: "password_resets#edit"
  patch "password_reset_edit", to: "password_resets#update"
  
  delete "logout", to: "sessions#destroy"

  root to:"main#index" # for get "/" its empty default route so root to works



end
