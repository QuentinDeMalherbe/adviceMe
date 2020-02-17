Rails.application.routes.draw do
  devise_for :users
  root to: 'vices#index', as: 'home'
  resources :vices, only: [:show ] do
    resources :conferences, only: %i[show new create], shallow: true
  end
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
