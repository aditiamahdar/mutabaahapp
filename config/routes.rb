Rails.application.routes.draw do
  mount RailsAdmin::Engine => '/superadmin', as: 'rails_admin'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  root 'home#index'
  post '/login' => 'home#login', as: :login
  delete '/logout' => 'dashboard#logout', as: :logout
  get '/dashboard' => 'dashboard#index', as: :dashboard
end
