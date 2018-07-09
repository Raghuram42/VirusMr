Rails.application.routes.draw do
  get 'detects/index'

  get 'detects/new'

  get 'detects/create'

  get 'home/index'

  get 'home/show'

  get 'contact/index'

  get 'contact/edit'

  get 'contact/update'

  get 'history/index'

  get 'history/show'

  get 'about/index'

 
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  resources :detects, only: [:index, :new, :create]
  root "detects#new"
  devise_for :users, controllers: {
        sessions: 'users/sessions'
  }

  resources :home
  resources :contact
  resources :history 
end
