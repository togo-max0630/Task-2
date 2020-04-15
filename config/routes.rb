Rails.application.routes.draw do

  root to: 'books#top'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
 
  get 'books' => 'books#index'
  get 'books/:id' => 'books#show' , as: 'book'
  get 'books/:id/edit' => 'books#edit' , as: 'edit_book'


  post 'books' => 'books#create'

  patch 'books/:id' => 'books#update', as: 'update_book'

  delete 'books/:id' => 'books#destroy', as: 'destroy_book'
end
