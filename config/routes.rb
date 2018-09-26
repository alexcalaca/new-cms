Rails.application.routes.draw do
  
  get 'subjects/index'
  get 'subjects/show'
  get 'subjects/new'
  get 'subjects/edit'
  get 'subjects/delete'

  root 'demo#index'
  get 'demo/index'
  get 'demo/hello'
  get 'demo/other_hello'
  #get "demo/index"  #Simple (matching) route
  #match "demo/index", :to => "demo#index", :via => :get # Longer version of a simple route
end