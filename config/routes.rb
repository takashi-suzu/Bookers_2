Rails.application.routes.draw do
  get 'top' => 'homes#top'
  devise_for :users
  root 'homes#top'
  resources :users, only: [:edit, :show]
  resources :books, only: [:create, :index, :show, :update]
end

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html