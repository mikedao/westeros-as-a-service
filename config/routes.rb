Rails.application.routes.draw do
  get '/', to: 'home#index'
  get '/api/v1/house/', to: 'api/v1/houses#index'
  get '/api/v1/house/:id', to: 'api/v1/houses#show'
end
