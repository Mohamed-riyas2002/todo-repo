Rails.application.routes.draw do
  # get 'users/index'
  # get 'todos/index'
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  # match 'todos',to: 'todos#index',via: :get
  get 'todos/show_list'
  match 'todos/update/:id', to: 'todos#update',via: :get
  match 'todos/delete/:id', to: 'todos#delete',via: :get
  match 'todos/create',to: 'todos#create', via: :post
  match 'todos', to: 'todos#index', via: :get
  root 'todos#index'
  match 'todos/show_list', to: 'todos#show_list', via: :get
  match 'todos/:id',to: 'todos#show', via: :get
  # match 'register' , to:  'users#index', via: :get
  # match 'users/create' , to:  'users#create', via: :post
end
