Rails.application.routes.draw do

  get 'cemetery/general_information'

  get 'cemetery/fees'

  get 'contact/service_agency'

  get 'contact/community_links'

  get 'greenbelt/general_information'

  get 'greenbelt/rules'

  get 'greenbelt/millpond_trail'

  devise_for :users, path: '', path_names: { sign_in: 'login', sign_out: 'logout', sign_up: 'register' }
  
  resources :bulletins, except: [:show] do
    put :sort, on: :collection
  end
  
  get 'bulletin/:id', to: 'bulletins#show', as: 'bulletin_show'
  
  get 'parks/general_information'

  get 'parks/all_parks'

  get 'parks/rules'

  get 'parks/hours'

  get 'parks/pavilion_fees'

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
  
  get 'meeting_minutes', to: 'pages#meeting_minutes'
  
  get 'golf_course', to: 'pages#golf_course'
  
  get 'spoc', to: 'pages#spoc'
  
  root to: 'bulletins#index'

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
