Rails.application.routes.draw do

  get "about", to: "about#index"

  root to:"main#index" # for get "/" its empty default route so root to works



end
