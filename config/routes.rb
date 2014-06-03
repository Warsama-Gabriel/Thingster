Rails.application.routes.draw do

  root 'pages#index'
  get '/helloworld', to: 'pages#helloworld', as: 'helloworld'

 
end
