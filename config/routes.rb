Rails.application.routes.draw do
  get 'unit/index'

  get 'property/index'

  devise_for :managers#, :controllers => { registrations: 'registrations' }

  root to: 'unit#index'

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
