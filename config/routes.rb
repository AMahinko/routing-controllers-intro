Rails.application.routes.draw do

get '/welcome' => 'pages#welcome'

root 'pages#welcome'

get '/about' => 'pages#about'

get '/contest' => 'pages#contest'

get '/kitten/:size'=> 'pages#kitten', as: 'kitten'

get '/kittens/:size' => 'pages#kittens'

get '/secrets/:secretword' => 'pages#secrets'

end
