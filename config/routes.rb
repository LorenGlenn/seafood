Rails.application.routes.draw do
  devise_for :users
  get 'dishes/index'

  get 'dishes/show'

  get 'dishes/edit'

  get 'dishes/new'

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
