Rails.application.routes.draw do
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  # root "articles#index"

  # #lists
  # get "lists", to: "lists#index"  , as: :index
  # get "lists/new", to: "lists#new", as: :new
  # post "lists", to: "lists#create"
  # get "lists/:id", to: "lists#show", as: :show

  # #bookmarks
  # get "lists/:id/bookmarks", to: 'bookmarks#index', as: :list_bookmarks
  # get 'lists/:id/bookmarks/new', to: 'bookmarks#new', as: :new_bookmark
  # post 'lists/:id/bookmarks', to: 'lists#create'
 resources :lists do
  resources :bookmarks, only: [:new, :create]
 end
 resources :bookmarks, only: [:destroy]
end
