Rails.application.routes.draw do
  # mount RailsAdmin::Engine => '/t/admin', as: 'rails_admin'
  get 'tutor_requests/new'

  get 'cvstudents/import_from_excel'

  get 'subject/new'

  get 'sessions/new'

  root 'static_pages#home'
  get '/home',    to: 'static_pages#home'
  get '/help',    to: 'static_pages#help'
  get '/about',   to: 'static_pages#about'
  get '/academyLink', to: 'static_pages#academyLink'
  
  get '/findatutor', to: 'subject#findatutor'
  post '/findatutor', to: 'subject#findatutor'
  get '/findresults', to: 'subject#findresults'
  get '/findatutorRosemont', to: 'subject#findatutorRosemont'
  post '/findatutorRosemont', to: 'subject#findatutorRosemont'
  get '/findresultsRosemont', to: 'subject#findresultsRosemont'
  
  get  '/tutorsignup', to: 'tutors#new'
  post '/tutorsignup', to: 'tutors#create'
  get '/adminSignup', to: 'people#adminSignup'
  post '/adminSignup', to: 'people#createAdmin'
  get  '/login', to: 'sessions#new'
  post  '/login', to: 'sessions#create'
 
  get '/subjectcreate', to: 'subject#new'
  post '/subjectcreate', to: 'subject#create'
  post '/subjectdelete', to: 'subject#destroy'
  delete '/subjectdelete', to: 'subject#destroy'
  delete '/logout', to: 'sessions#destroy'
  get '/download', to: 'people#adminPage'
  get '/persons', to: 'people#adminPage'
  get '/downloadAcademyInfo', to: 'people#academyInfo'
  
  get '/adminPage', to: 'people#adminPage'
  post '/adminPage', to: 'people#adminPage'
  post '/startNewAcademicYear', to: 'people#startNewAcademicYear'
  
  get '/selectedTutor', to: 'subject#selectedTutor'
  get '/subject', to: 'people#subject'
  get '/request', to: 'tutor_requests#new'
  post '/request', to: 'tutor_requests#create'
  delete '/requestdelete', to: 'tutor_requests#destroy'
  post '/makeAccepted', to: 'tutor_requests#makeAccepted'
  post '/decline', to: 'tutor_requests#declined'
  
  post '/sendemail', to: 'people#sendemail'
  
  get '/import_from_excel', to: 'cvstudents#gohere'
  post 'import_from_excel' => "cvstudents#import_from_excel"
  get '/clear', to: 'cvstudents#clear'
  post '/clear', to: 'cvstudents#clear'
  
  
    
#   get '/studygroup', to: 'study_groups#allgroups'
#   post '/studygroup', to: 'study_groups#allgroups'
#   get '/creategroup', to: 'study_groups#new'
#   post '/creategroup', to: 'study_groups#create'
#   get '/owner', to: 'study_groups#ownerPage'
#   post '/owner', to: 'study_groups#ownerGroup'
#   patch '/editGroup', to: 'study_groups#update'
#   #patch not post
#  # delete '/study_group_delete', to: 'study_groups#destroy'
#   post '/joinGroup', to: 'study_groups#joinGroup'
#   delete '/groupdelete', to: 'study_groups#destroy'
  
  get '/accountDelete', to: 'people#destroy'
  delete '/accountDelete', to: 'people#destroy'
  
  get '/nope', to: 'static_pages#forbidden'
  
  get '/forgotPassword', to: 'passwords#forgotPage'
  get '/resetPassword', to: 'passwords#resetPage'
  post '/forgotPassword', to: 'passwords#forgot'
  post '/resetPassword', to: 'passwords#reset'
  
  resources :tutees
  
  resources :tutors
  
  resources :people
 
  resources :subject
  
  resources :account_activations, only: [:edit]

  # resources :study_groups
  
  resources :tutor_request
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end

