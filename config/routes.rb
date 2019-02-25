Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html


  namespace :api do
    resources :clients
  end


post '/login'=> 'session#screate'
delete 'logout'=> 'sessions#delete'
resources :users
get '/profile'=> 'users#profile'

end
