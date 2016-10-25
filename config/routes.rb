Rails.application.routes.draw do
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
end
