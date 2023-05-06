Rails.application.routes.draw do
  scope 'status' do
    get 'health', to: 'status#health'
    get 'readiness', to: 'status#readiness'
  end

  resources :posts, only: [:index, :show] do
  end

  mount Sidekiq::Web => '/admin/sidekiq'
end
