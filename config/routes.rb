Rails.application.routes.draw do
  get 'sessionbooks/new'

  get 'books/list'

  get 'books/new'

  get 'sessionmembers/new'

  get 'members/new'

  get 'sessions/new'
  
  get 'admins/new'

  root 'static_pages#home'
  get 'help' => 'static_pages#help'
  get 'about' => 'static_pages#about'
  get 'contact' => 'static_pages#contact'
  get 'signup' => 'admins#new'
  get 'signupmember' => 'members#new'
  get 'login' => 'sessions#new'
  post 'login' => 'sessions#create'
  delete 'logout' => 'sessions#destroy'
  get 'loginmember' => 'sessionmembers#new'
  post 'loginmember' => 'sessionmembers#create'
  delete 'logoutmember' => 'sessionmembers#destroy'
  get 'books' => 'books#new'
  get 'bookslist' => 'books#index'

  resources :admins
  resources :members
  resources :books
end