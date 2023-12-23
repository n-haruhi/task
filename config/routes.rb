Rails.application.routes.draw do

  root to: 'homes#top'

  get '/top' => 'homes#top'
  get '/about' => 'homes#about'
  devise_for :users
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html

  get 'todos', to: 'todos#index'
  post 'todos', to: 'todos#addTodo'
  delete 'todos/:id', to: 'todos#deleteTodo'

end
