Rails.application.routes.draw do
  devise_for :users, :controllers => {:registrations => "welcome"}
  root 'application#index'
end
