Rails.application.routes.draw do
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  resources :fruit, only: [:index]
  post '/fruit/:id/pick', to: 'fruit#pick'
  post '/fruit/:id/drop', to: 'fruit#drop'
end
