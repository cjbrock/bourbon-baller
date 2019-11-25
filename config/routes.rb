Rails.application.routes.draw do
  resources :reviews
  resources :bourbons
  resources :distilleries
  devise_for :users
  root to: 'application#welcome'
end
