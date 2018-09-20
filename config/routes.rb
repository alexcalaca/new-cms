Rails.application.routes.draw do
  get 'demo/index'
  get 'demo/hello'
  #get "demo/index"  #Simple (matching) route
  #match "demo/index", :to => "demo#index", :via => :get # Longer version of a simple route

end