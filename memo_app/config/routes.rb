Rails.application.routes.draw do
  # get 'memos/index'
  # get 'memos/show'
  # get 'memos/new'
  # get 'memos/edit'
  root to: 'memos#index'
  resources :memos
  
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
