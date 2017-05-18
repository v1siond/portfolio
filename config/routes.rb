Rails.application.routes.draw do
  ActiveAdmin.routes(self)
  
  root to: 'visitors#index'
  post 'contact_me' => 'visitors#contact_me'

  devise_for :users
end
