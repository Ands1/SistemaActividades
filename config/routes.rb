Rails.application.routes.draw do
#    namespace :activity do
#        resources :notes
#        resources :participants
#    end
    resources :activities do
        scope module: :activity do 
            resources :notes
            resources :participants
        end
        
        
    end
    devise_for :users
#    resources :users_admin, :controller => 'users'
    get 'home/index'
    root to: "home#index"
end
