Rails.application.routes.draw do
  resources :fairs
  devise_for :users
  get 'fairs/index'
  get 'fairs/show'
  get 'home/index'
  root 'home#index'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
