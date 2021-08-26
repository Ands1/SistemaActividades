Rails.application.routes.draw do
  namespace :activity do
    resources :notes
    resources :participants
  end
    resources :activities
    devise_for :users
    get 'home/index'
    root to: "home#index"
end
