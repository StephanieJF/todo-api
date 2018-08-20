Rails.application.routes.draw do
  resources :users  do
    resources :lists  do
      resources :items
    end
  end

  namespace :api, defaults: { format: :json } do
    resources :users
  end
end
