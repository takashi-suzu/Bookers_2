Rails.application.routes.draw do
  # get 'top' => 'homes#top'
  devise_for :users
  root 'homes#top'
  get '/home/about' => 'users#about'
  resources :users, only: [:new, :index, :edit, :show]
  resources :books, only: [:new, :create, :index, :show, :update]
end

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html