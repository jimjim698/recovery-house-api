Rails.application.routes.draw do
  post 'api/user_token' => 'api/user_token#create'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html


  namespace :api do
    resources :clients
    resources :users
    resources :api
    resources :announcements


 # Get login token from Knock
 post   'user_token'      => 'user_token#create'

 # User actions
 #get    '/users'          => 'users#index'
 #get    '/users/current'  => 'users#current'
 post   '/users/create'   => 'users#create'
 #patch  '/user/:id'       => 'users#update'
 #delete '/user/:id'       => 'users#destroy'
  end


post 'api/users/login'=> 'api/users#login'
delete 'logout'=> 'sessions#delete'
get '/profile'=> 'users#profile'

end
