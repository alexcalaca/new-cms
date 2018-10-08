Rails.application.routes.draw do
  
  root 'demo#index'
  
  get 'admin', :to => 'access#menu'
  get 'access/menu'
  get 'access/login'
  post 'access/attempt_login'
  get 'access/logout'
  
  resources :sections do
    member do
      get :delete
    end
  end
  
  resources :pages do
    member do
      get :delete
    end
  end
  
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