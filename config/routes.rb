Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html

  # read all
  # get '/restaurants', to: 'restaurants#index'

  # # read one
  # get '/restaurants/:id', to: 'restaurants#show'

  # # create
  # get '/restaurants/new', to: 'restaurants#new'
  # post '/restaurants', to: 'restaurants#create'

  # # update
  # get '/restaurants/:id/edit', to: 'restaurants#edit'
  # patch '/restaurants/:id', to: 'restaurants#update'

  # # destroy
  # delete '/restaurants/:id', to: 'restaurants#destroy'

  resources :restaurants
end












