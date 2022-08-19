Rails.application.routes.draw do
  get 'bookmarks/new'
  get 'bookmarks/create'
  get 'bookmarks/destroy'
  resources :lists, only: %i[index show new create] do
    resources :bookmarks, only: %i[new create]
  end
  resources :bookmarks, only: %i[destroy]
end
