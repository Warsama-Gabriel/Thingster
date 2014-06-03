Rails.application.routes.draw do

  root 'pages#index'
  get 'pages/helloworld', as: 'helloworld'

 
end
