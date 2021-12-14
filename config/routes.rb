Rails.application.routes.draw do
  devise_for :admin_users, ActiveAdmin::Devise.config
  ActiveAdmin.routes(self)
  devise_for :users, controllers: { omniauth_callbacks: 'users/omniauth_callbacks' }
  resources :opinions
  resources :users, only: %i[edit update] 
  get 'fairs', to: 'fairs#index', as: 'fairs'
  get 'fair/:id', to: 'fairs#show', as:'feria'
  get 'filter', to: 'fairs#filter', as: 'filter'
  get 'profile/:id', to: 'users#show', as:'profile'
  root 'home#index'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
