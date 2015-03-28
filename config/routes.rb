Rails.application.routes.draw do
  resources :product_items

  devise_for :users, :controllers => {:registrations => "welcome"}
  root 'application#index'
end
