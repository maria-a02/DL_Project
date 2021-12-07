Rails.application.routes.draw do
  devise_for :admin_users, ActiveAdmin::Devise.config
  ActiveAdmin.routes(self)
  resources :opinions
  resources :fairs
  resources :users, only: %i[edit update] 
  devise_for :users
  get 'profile/:id', to: 'users#show', as:'profile'
  get 'filter', to: 'fairs#filter', as: 'filter'
  root 'home#index'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
