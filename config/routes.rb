Rails.application.routes.draw do

  devise_for :users

#                   Prefix Verb   URI Pattern                    Controller#Action
#         new_user_session GET    /users/sign_in(.:format)       devise/sessions#new
#             user_session POST   /users/sign_in(.:format)       devise/sessions#create
#     destroy_user_session DELETE /users/sign_out(.:format)      devise/sessions#destroy
#            user_password POST   /users/password(.:format)      devise/passwords#create
#        new_user_password GET    /users/password/new(.:format)  devise/passwords#new
#       edit_user_password GET    /users/password/edit(.:format) devise/passwords#edit
#                          PATCH  /users/password(.:format)      devise/passwords#update
#                          PUT    /users/password(.:format)      devise/passwords#update
# cancel_user_registration GET    /users/cancel(.:format)        devise/registrations#cancel
#        user_registration POST   /users(.:format)               devise/registrations#create
#    new_user_registration GET    /users/sign_up(.:format)       devise/registrations#new
#   edit_user_registration GET    /users/edit(.:format)          devise/registrations#edit
#                          PATCH  /users(.:format)               devise/registrations#update
#                          PUT    /users(.:format)               devise/registrations#update
#                          DELETE /users(.:format)               devise/registrations#destroy
#                     root GET    /                              pages#helloworld
#                   things GET    /things(.:format)              things#index
#                          POST   /things(.:format)              things#create
#                new_thing GET    /things/new(.:format)          things#new
#               edit_thing GET    /things/:id/edit(.:format)     things#edit
#                    thing GET    /things/:id(.:format)          things#show
#                          PATCH  /things/:id(.:format)          things#update
#                          PUT    /things/:id(.:format)          things#update
#                          DELETE /things/:id(.:format)          things#destroy
#               helloworld GET    /helloworld(.:format)          pages#helloworld
                  # mythings GET    /mythings(.:format)            things#mythings

  
  root to: 'pages#helloworld'
  
  resources :things

  get '/mythings', to: 'things#mythings', as: 'mythings'
  get '/helloworld', to: 'pages#helloworld', as: 'helloworld'

end
