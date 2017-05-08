Rails.application.routes.draw do
 devise_for :users
 root 'tweets#index'
 resources :tweets do
  resources :comments, only: [:create]
 end
 resources :users, only: [:show]
 # get 'tweets' => 'tweets#index'
 # get 'tweets/new' => 'tweets#new'
 # post 'tweets' => 'tweets#create'
 # delete 'tweets/:id' => 'tweets#destroy'
 # get 'users/:id' => 'users#show'
 # get 'tweets/:id/edit' => 'tweets#edit'
 # patch 'tweets/:id' => 'tweets#update'
 # get 'tweets/:id' => 'tweets#show'
end
