require "resque_web"

Rails.application.routes.draw do
  mount ResqueWeb::Engine => "/resque_web"
  resources :comments
  resources :posts 
  resources :users 
  resources :items
  get 'users/large/:id' => 'users#show_large'
  resources :cats

  namespace :cache_test do
    get '/:action/:id'
  end
  
  get '/odd_stuff/*other/:the_end', to: 'cache_test#odd', constraints: { the_end: /[A-Za-z]{4}/ }
  resources :people
  
  get "/rubyrace" => "rubyracer#index"
  
  root 'home#index'
end
