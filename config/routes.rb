Rails.application.routes.draw do
  get 'users/index'

  get 'users/create'

  get 'users/show'

  get 'users/edit'

  get 'users/delete'

  root 'users#index'

  mount RailsAdmin::Engine => '/admin', as: 'rails_admin'
  devise_for :users
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
