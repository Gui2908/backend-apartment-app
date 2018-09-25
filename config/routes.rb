Rails.application.routes.draw do
  devise_for :users, defaults: { format: :json }
  resources :users do
    resources :apartments
  end
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
