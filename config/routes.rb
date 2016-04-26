require "resque_web"

Rails.application.routes.draw do
  mount ResqueWeb::Engine => "/resque_web"
  devise_for :users
  resources :comments
  resources :posts 
  resources :users do 
    get '/large/:id' => 'users#show_large'
  end
  resources :items
  resources :people
  resources :cats

  namespace :cache_test do
    get '/:action/:id'
  end
  
  get '/odd_stuff/*other/:the_end', to: 'cache_test#odd', constraints: { the_end: /[A-Za-z]{4}/ }
  get "/auth/:provider/callback" => "sessions#create"
  get "/signout" => "sessions#destroy", :as => :signout
  root 'home#index'
end
