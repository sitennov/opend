Rails.application.routes.draw do
  root 'adverts#index'

  resources :adverts, shallow: true
end
