Rails.application.routes.draw do
  resources :requests, :defaults => { :format => 'json' }
  resources :collections, :defaults => { :format => 'json' }
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
