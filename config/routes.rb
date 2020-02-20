Rails.application.routes.draw do
  get 'users/index'
 # get 'vices/index', 'vices#index'
  get 'users/show/:id', to: 'users#show', as: 'user'
  devise_for :users
  resources :vices, only: [:index,:show, :new, :create ] do
    resources :conferences, only: %i[show new create destroy], shallow: true do
      get 'confirmation', to: 'pages#confirmation', as: 'confirmation'
    end
  end
  get '/conferences' , to: 'conferences#index'
  root to: 'pages#home', as: :home
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
