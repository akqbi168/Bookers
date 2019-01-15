Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html

  # get 'books/show'
  # get 'books/index'
  # get 'books/new'
  # get 'books/edit'

  root "books#index"

  resources :books

end
