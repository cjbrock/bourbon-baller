Rails.application.routes.draw do
  resources :reviews
  resources :bourbons
  resources :distilleries
  devise_for :users, :controllers => {registrations: 'registrations' }
  root to: 'application#welcome'
end
