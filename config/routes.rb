Rails.application.routes.draw do
  get 'tutor_requests/new'

  get 'cvstudents/import_from_excel'

  get 'subject/new'

  get 'sessions/new'

  root 'static_pages#home'
  get '/home',    to: 'static_pages#home'
  get '/help',    to: 'static_pages#help'
  get '/about',   to: 'static_pages#about'
  
  get '/findatutor', to: 'subject#findatutor'
  post '/findatutor', to: 'subject#findatutor'
  
  get  '/signup', to: 'tutees#new'
  post '/signup',  to: 'tutees#create'
  get  '/tutorsignup', to: 'tutors#new'
  post '/tutorsignup', to: 'tutors#create'
  get  '/login', to: 'sessions#new'
  post  '/login', to: 'sessions#create'
 
  get '/subjectcreate', to: 'subject#new'
  post '/subjectcreate', to: 'subject#create'
  post '/subjectdelete', to: 'subject#destroy'
  delete '/subjectdelete', to: 'subject#destroy'
  delete '/logout', to: 'sessions#destroy'
  get '/download', to: 'people#adminPage'
  get '/persons', to: 'people#adminPage'
  get '/findresults', to: 'subject#findresults'
  get '/adminPage', to: 'people#adminPage'
  post '/adminPage', to: 'people#adminPage'
  get '/selectedTutor', to: 'subject#selectedTutor'
  #get '/subject', to: 'people#subject'
  get '/request', to: 'tutor_requests#new'
  post '/request', to: 'tutor_requests#create'
  delete '/requestdelete', to: 'tutor_requests#destroy'
  post '/accepted', to: 'tutor_requests#makeAccepted'
  
  get '/godaction', to: 'people#adminPage'
  post '/godaction', to: 'people_controller#godAction'
  
  get '/import_from_excel', to: 'cvstudents#gohere'
  post 'import_from_excel' => "cvstudents#import_from_excel"
  get '/clear', to: 'cvstudents#clear'
  post '/clear', to: 'cvstudents#clear'
  
    
  get '/studygroup', to: 'study_groups#allgroups'
  post '/studygroup', to: 'study_groups#allgroups'
  get '/creategroup', to: 'study_groups#new'
  post '/creategroup', to: 'study_groups#create'
  get '/owner', to: 'study_groups#ownerPage'
  post '/owner', to: 'study_groups#ownerGroup'
  patch '/editGroup', to: 'study_groups#update'
  #patch not post
 # delete '/study_group_delete', to: 'study_groups#destroy'
  post '/joinGroup', to: 'study_groups#joinGroup'
  delete '/groupdelete', to: 'study_groups#destroy'
  
  get '/accountDelete', to: 'people#destroy'
  delete '/accountDelete', to: 'people#destroy'
  
  get '/nope', to: 'static_pages#forbidden'
  
  resources :tutees
  
  resources :tutors
  
  resources :people
 
  resources :subject
  
  resources :account_activations, only: [:edit]
  
  resources :study_groups
  
  resources :tutor_request
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end

