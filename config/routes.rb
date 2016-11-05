Rails.application.routes.draw do
  resources :customers
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  get '/', to: 'finder#index', as: 'index'
  get 'missing_email/', to: 'finder#missing_email', as: 'missing_email'
  get 'alphabetized/', to: 'finder#alphabetized', as: 'alphabetized'
  delete 'customers/:id/destroy', to: 'customer#destroy', as: 'destroy_customer'
end
