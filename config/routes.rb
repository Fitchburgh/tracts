Rails.application.routes.draw do
  get 'unit/index'

  get 'unit/add'

  get 'property/index'

  post 'unit/create'

  devise_for :managers # , :controllers => { registrations: 'registrations' }

  root to: 'unit#index'

  get 'unit/expand'

  put 'unit/edit'

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
