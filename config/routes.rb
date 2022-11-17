Rails.application.routes.draw do
  resources :lists, only: [:index, :show, :new, :create] do
    resources :bookmarks, only: [:new, :create]
  end

  # get 'lists', to: 'lists#index', as: :lists
  # get 'lists/:id', to: 'lists#show', as: :list
  # get 'lists/new', to: 'lists#new', as: :new_list
  # post 'lists', to: 'lists#create'
end
