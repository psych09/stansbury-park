Rails.application.routes.draw do

  get 'clubhouse_pages/general_information'

  get 'clubhouse_pages/calendar'

  get 'clubhouse_pages/hours'

  get 'clubhouse_pages/reading_room'

  get 'clubhouse_pages/meeting_minutes'

  get 'clubhouse_pages/rental_rules'

  get 'clubhouse_pages/rental_fees'

  get 'clubhouse_pages/rental_contact'

  get 'clubhouse_pages/policy'

  get 'clubhouse_pages/check_out_list'

  get 'about', to: 'pages#about'
  
  get 'clubhouse', to: 'pages#clubhouse'
  
  get 'greenbelts', to: 'pages#greenbelts'
  
  get 'lake', to: 'pages#lake'
  
  get 'swimming_pool', to: 'pages#swimming_pool'
  
  get 'parks', to: 'pages#parks'
  
  get 'forms', to: 'pages#forms'
  
  get 'golf_course', to: 'pages#golf_course'
  
  get 'cemetery', to: 'pages#cemetery'
  
  get 'spoc', to: 'pages#spoc'
  
  get 'community_links', to: 'pages#community_links'
  
  get 'contact', to: 'pages#contact'
  
  root to: 'pages#home'

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
