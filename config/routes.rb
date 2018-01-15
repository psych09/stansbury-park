Rails.application.routes.draw do

  get 'about', to: 'pages#about'
  
  get 'clubhouse', to: 'pages#clubhouse'
  
  get 'greenbelts', to: 'pages#greenbelts'
  
  get 'lake', to: 'pages#lake'
  
  get 'swimming_pool', to: 'pages#swimming_pool'
  
  get 'parks', to: 'pages#parks'
  
  get 'forms', to: 'pages#forms'
  
  get 'golf_course', to: 'pages#golf_course'
  
  get 'cemetery', to: 'pages#cemetery'
  
  get 'community_links', to: 'pages#community_links'
  
  get 'contact', to: 'pages#contact'
  
  root to: 'pages#home'

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
