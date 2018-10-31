Rails.application.routes.draw do
  get '/tutee_signup', to: 'tutees#new'

  get 'static_pages/home'

  get 'static_pages/help'
  
  get 'static_pages/about'
  
  root 'static_pages#home'

  post '/signup',  to: 'tutees#create'

  resources :tutees

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end

