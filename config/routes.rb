Rails.application.routes.draw do

  mount RailsAdmin::Engine => '/admin', as: 'rails_admin'
    devise_for :users, controllers: {
        sessions: 'users/sessions'
      							}


  root "homes#index"

  resources :homes
end
