Rails.application.routes.draw do
  get 'top' => 'homes#top'
  devise_for :users
  root 'users#show'
  resources :users, only: [:inded, :show]
  resources :books, only: [:create, :index, :show, :update]
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
