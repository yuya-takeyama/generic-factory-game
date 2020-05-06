Rails.application.routes.draw do
  resources :games do
    member do
      get 'new_storages'
      post 'create_storages'
    end

    resources :factories
  end

  resources :players
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html

  root 'home#index'
end
