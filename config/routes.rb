Rails.application.routes.draw do
  resources :accounts, only: :create, defaults: { format: :json }
  resources :users, only: [:create, :update], defaults: { format: :json }
  post '/login' => 'users#login', defaults: { format: :json }
end
