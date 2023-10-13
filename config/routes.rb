Rails.application.routes.draw do
  # root "articles#index"
  resources :users, only: %i[new create edit update]
end
