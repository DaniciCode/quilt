Rails.application.routes.draw do
  devise_for :users
  root to: 'pages#home'
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  resources :memories, except: :update
  resources :families do
    resources :user_families, only: [:create , :destroy]
    #resources :scrapbook, only: :create (depende se pertence a familia)
  end
  #resources :scrapbook, only: :destroy
  #resources :scrapbook_memories, only: :destroy
end
