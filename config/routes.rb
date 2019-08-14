Rails.application.routes.draw do
root to: 'gossips#index'

resources :gossips
resources :cities
resources :user

  get 'static_pages/team'
  get '/team', to: 'static_pages#team'
  get 'contact', to: 'static_pages#contact'
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
get '/landing_page', to: 'd#landing_page'
end
