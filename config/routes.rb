Rails.application.routes.draw do
  get 'subject/new'

  get 'sessions/new'

  root 'static_pages#home'
  get '/home',    to: 'static_pages#home'
  get '/help',    to: 'static_pages#help'
  get '/about',   to: 'static_pages#about'
  get  '/signup', to: 'tutees#new'
  post '/signup',  to: 'tutees#create'
  get  '/tutorsignup', to: 'tutors#new'
  post '/tutorsignup', to: 'tutors#create'
  get '/studygroup', to: 'static_pages#studygroup'
  get  '/login', to: 'sessions#new'
  post  '/login', to: 'sessions#create'
  get '/subjectcreate', to: 'subject#new'
  post '/subjectcreate', to: 'subject#create'
  delete '/login', to: 'sessions#destroy'
  resources :tutees
  
  resources :tutors
  
  resources :people

  resources :subject
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end

