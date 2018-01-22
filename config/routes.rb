Rails.application.routes.draw do

  get 'greenbelt/general_information'

  get 'greenbelt/rules'

  get 'greenbelt/millpond_trail'

  devise_for :users, path: '', path_names: { sign_in: 'login', sign_out: 'logout', sign_up: 'register' }
  resources :bulletins, except: [:show]
  get 'bulletin/:id', to: 'bulletins#show', as: 'bulletin_show'
  
  get 'parks/general_information'

  get 'parks/all_parks'

  get 'parks/rules'

  get 'parks/hours'

  get 'parks/pavilion_fees'

  get 'parks/sports_policy'

  get 'parks/sports_facility_agreement'

  get 'swimming_pool/general_information'

  get 'swimming_pool/rules'

  get 'swimming_pool/hours'

  get 'swimming_pool/admission'

  get 'swimming_pool/season_pass'

  get 'swimming_pool/party_rental'

  get 'swimming_pool/swimming_lessons'

  get 'lake/general_information'

  get 'lake/rules'

  get 'lake/dock_approval'

  get 'lake/mowing_schedule'

  get 'lake/fishing'

  get 'lake/millpond'

  get 'lake/feeding_waterfowl'

  get 'clubhouse/general_information'

  get 'clubhouse/calendar'

  get 'clubhouse/hours'

  get 'clubhouse/reading_room'

  get 'clubhouse/rental_rules'

  get 'clubhouse/rental_fees'

  get 'clubhouse/rental_contact'

  get 'clubhouse/policy'

  get 'clubhouse/check_out_list'

  get 'about', to: 'pages#about'
  
  get 'clubhouse', to: 'pages#clubhouse'
  
  get 'greenbelts', to: 'pages#greenbelts'
  
  get 'meeting_minutes', to: 'pages#meeting_minutes'
  
  get 'lake', to: 'pages#lake'
  
  get 'swimming_pool', to: 'pages#swimming_pool'
  
  get 'parks', to: 'pages#parks'
  
  get 'forms', to: 'pages#forms'
  
  get 'golf_course', to: 'pages#golf_course'
  
  get 'cemetery', to: 'pages#cemetery'
  
  get 'spoc', to: 'pages#spoc'
  
  get 'community_links', to: 'pages#community_links'
  
  get 'contact', to: 'pages#contact'
  
  root to: 'bulletins#index'

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
