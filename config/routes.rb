Rails.application.routes.draw do
  post 'api/user_token' => 'api/user_token#create'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html


  namespace :api do
    resources :clients
    resources :users
    resources :api
    get '/profile'=> 'users#profile'
  end


post '/login'=> 'session#screate'
delete 'logout'=> 'sessions#delete'
get '/profile'=> 'users#profile'

end
