Rails.application.routes.draw do
  
  root 'demo#index'
  
  resources :subjects do
    member do
      get :delete
    end
  end
  
  get 'demo/index'
  get 'demo/hello'
  get 'demo/other_hello'
  #get "demo/index"  #Simple (matching) route
  #match "demo/index", :to => "demo#index", :via => :get # Longer version of a simple route
end