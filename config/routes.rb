Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html

  # root is quote's index
  root 'quotes#index'

  # we do not use resources because we use only some of CRUD operations
  # for creating
  get '/quotes/new', to: 'quotes#new', as: :new_quote
  post '/quote', to: 'quotes#create'

end
