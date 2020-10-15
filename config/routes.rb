Rails.application.routes.draw do
     get'users/index',to: 'users#index'
    get 'top/main'
    post 'top/login'
    root 'top#main'
    get 'top/logout'
    get 'users/new',to: 'users#new'
    post 'users', to: 'users#create'
    delete 'users/:id',to: 'users#destroy'
    resources :users,only: [:index,:new,:create,:destroy]
  end
