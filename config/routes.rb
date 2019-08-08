Rails.application.routes.draw do
  get '/welcome/:first_name', to: 'home#landing_page'
  get '/contact', to:'home#contact_show'
  get '/team', to: 'home#show_team'
  resources :gossips
  resources :users
  resources :cities
  resources :sessions, only: [:new,:create, :destroy]
end
