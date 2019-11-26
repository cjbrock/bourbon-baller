Rails.application.routes.draw do
  get 'bourbons/grouped_ratings', to: 'bourbons#ratings'
  resources :reviews
  resources :bourbons do
    resources :reviews, only: [:new, :index]
  end

  resources :distilleries
  devise_for :users, :controllers => {registrations: 'registrations' }
  root to: 'application#welcome'

  
end
