Rails.application.routes.draw do
<<<<<<< HEAD
  get '/tutee_signup', to: 'tutees#new'

  get 'static_pages/home'

  get 'static_pages/help'
  
  get 'static_pages/about'
  
  root 'static_pages#home'

  post '/signup',  to: 'tutees#create'

  resources :tutees

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end

=======
  root 'static_pages#home'
  get  '/help',    to: 'static_pages#help'
  get  '/about',   to: 'static_pages#about'
  get  '/contact', to: 'static_pages#contact'
  

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
>>>>>>> 2e8f54c59f412c13620ed903bfe8678d1e5649c4
