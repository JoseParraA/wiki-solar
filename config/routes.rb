# == Route Map
#
#      Prefix Verb   URI Pattern                 Controller#Action
#       moons GET    /moons(.:format)            moons#index
#             POST   /moons(.:format)            moons#create
#    new_moon GET    /moons/new(.:format)        moons#new
#   edit_moon GET    /moons/:id/edit(.:format)   moons#edit
#        moon GET    /moons/:id(.:format)        moons#show
#             PATCH  /moons/:id(.:format)        moons#update
#             PUT    /moons/:id(.:format)        moons#update
#             DELETE /moons/:id(.:format)        moons#destroy
#     planets GET    /planets(.:format)          planets#index
#             POST   /planets(.:format)          planets#create
#  new_planet GET    /planets/new(.:format)      planets#new
# edit_planet GET    /planets/:id/edit(.:format) planets#edit
#      planet GET    /planets/:id(.:format)      planets#show
#             PATCH  /planets/:id(.:format)      planets#update
#             PUT    /planets/:id(.:format)      planets#update
#             DELETE /planets/:id(.:format)      planets#destroy
#       users GET    /users(.:format)            users#index
#             POST   /users(.:format)            users#create
#    new_user GET    /users/new(.:format)        users#new
#   edit_user GET    /users/:id/edit(.:format)   users#edit
#        user GET    /users/:id(.:format)        users#show
#             PATCH  /users/:id(.:format)        users#update
#             PUT    /users/:id(.:format)        users#update
#             DELETE /users/:id(.:format)        users#destroy
#

Rails.application.routes.draw do
  root :to => 'pages#home'

  resources :users, :only => [:new, :create]

  get '/login' => 'session#new'
  post '/login' => 'session#create'
  delete '/login' => 'session#destroy'

  resources :moons
  resources :planets
  resources :users

  # post 'planets/:id/edit' => 'planets#add_moon'
end

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
