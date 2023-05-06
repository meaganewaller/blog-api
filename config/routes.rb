Rails.application.routes.draw do
  scope 'status' do
    get 'health', to: 'status#health'
    get 'readiness', to: 'status#readiness'
  end

  resources :posts, only: [:index, :show] do
  end

  get '/admin/env_settings', to: 'env_settings#index'

  mount Sidekiq::Web => '/admin/sidekiq'
end
