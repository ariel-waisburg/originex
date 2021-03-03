Rails.application.routes.draw do
  devise_for :users
  root to: 'pages#home'
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  resources :user_interests, only:  %i[index new create destroy]  
  resources :activities, only: %i[index show] do
    resources :events, only: %i[show]
    resources :chatrooms, only: %i[new create]
  end
  resources :chatrooms, only: :show do
    resources :messages, only: :create
  end
  resources :participants, only: %I[index]
end
