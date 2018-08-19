Rails.application.routes.draw do
  resources :users  do
    resources :lists  do
      resources :items
    end
  end
end
