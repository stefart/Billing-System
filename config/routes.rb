Rails.application.routes.draw do
  resources :tariffa_oraria
  get 'bills/new'
  root to:'clients#index'

  resources :clients do
    resources :bills, only: [:new, :create, :destroy, :index, :show]
  end
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html

end
