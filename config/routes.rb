Rails.application.routes.draw do
  get 'books/show'
  get 'books/index'
  get 'books/new'
  get 'books/edit'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  resources :books
end
