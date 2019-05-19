Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html

  resources :students

  # get '/students' => 'students#index'
  get '/schools' => 'schools#index'
  get '/schools/:id' => 'schools#show'

  # post '/students' => 'students#create'
end
