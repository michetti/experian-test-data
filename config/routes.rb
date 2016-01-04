Rails.application.routes.draw do
  resources :profiles, param: :reference, only: [:index, :show]

  root "profiles#index"
end
