Rails.application.routes.draw do
  get 'home/index'

  get 'unit/index'

  get 'unit/add'

  get 'unit/expand'

  put 'unit/edit'

  get 'property/index'

  post 'unit/create'

  devise_for :managers # , :controllers => { registrations: 'registrations' }

  root to: 'unit#index'

  # devise_scope :managers do
  #   get 'managers/sign_out' => 'sessions#destroy'
  # end

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
