Rails.application.routes.draw do
  devise_for :users
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  
  resources :articles do #articles_controllerに対して。do-endで囲むことで中の記述をネストさせている
    resources :comments, only:[:create]
  end
  resources :users, only:[:show]
  
  root 'articles#index'
  get 'articles' => 'articles#index'
  get 'articles/new' => 'articles#new'
  post 'articles' => 'articles#create'
  get 'articles/random' => 'articles#random'
  get 'users/:id'  => 'users#show'  #mypageへのルーティング
  
  delete 'articles/:id' => 'articles#destroy'
  get 'articles/:id/edit' => 'articles#edit'
  patch 'articles/:id' => 'articles#update' #更新のためのルーティング
  get 'articles/:id' => 'articles#show'
  
end
