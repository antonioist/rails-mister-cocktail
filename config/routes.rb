Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  root to: 'cocktails#home'
  resources :cocktails, except: [:edit, :update] do
    resources :doses, only: [:new, :create]
  end
  resources :doses, only: :destroy
  get 'home', to: 'cocktails#home', as: :home

end
