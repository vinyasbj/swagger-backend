Rails.application.routes.draw do
  resources :comments, :defaults => { :format => 'json' }
  resources :requests, :defaults => { :format => 'json' }
  resources :collections, :defaults => { :format => 'json' }
  get "request_comments",:to => "comments#request_comments"
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
