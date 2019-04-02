Rails.application.routes.draw do
  get '/api/v1/house/', to: 'api/v1/houses#index'
  get '/api/v1/house/:id', to: 'api/v1/houses#show'
end
