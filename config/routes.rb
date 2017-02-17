Rails.application.routes.draw do
  get 'reviews/new'

  get 'reviews/edit'

  devise_for :users
  resources :dishes
  root 'dishes#index'

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
