Rails.application.routes.draw do
  resources :parthners
  resources :acts
  resources :subscriptions
  resources :users
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
