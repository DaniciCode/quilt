Rails.application.routes.draw do
  devise_for :users
  root to: 'pages#home'
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  post "create_only_memory", to: 'memories#create_only_memory'
  resources :memories, only: [:index, :destroy]
  resources :families do
    resources :user_families, only: [:new, :create]
     resources :scrapbooks, only: [:show , :new, :create] do
       resources :memories, except: :destroy
       resources :scrapbook_memories, only: [:new, :create]
    end
  end
  get "my_families", to: 'families#my_families'
  resources :user_families, only: [:create , :destroy]

  #get "my_scrapbooks", to: 'scrapbook#my_scrapbooks'
  #resources :scrapbook_memories, only: [:create, :destroy]
end
