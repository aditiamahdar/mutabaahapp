Rails.application.routes.draw do
  apipie
  mount RailsAdmin::Engine => '/superadmin', as: 'rails_admin'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  root 'home#index'
  post '/login' => 'home#login', as: :login

  delete '/logout' => 'dashboard#logout', as: :logout
  get '/dashboard' => 'dashboard#index', as: :dashboard
  get '/muwashafat' => 'muwashafat#index', as: :muwashafats
  patch '/muwashafat/:id' => 'muwashafat#update', as: :update_muwashafat

  get '/yaumiyah' => 'yaumiyah#index', as: :yaumiyah
  post '/yaumiyah/report' => 'yaumiyah#report', as: :yaumiyah_report

  namespace :api do
    namespace :v1, format: :json do
      resources :token, only: [:create, :destroy]
      resources :muwashafat, only: [:index, :update]
      resources :users, only: [:show, :update]
      resources :yaumiyah, only: [:index, :create, :update]
      resources :reports, only: [:index]
    end
  end
end
