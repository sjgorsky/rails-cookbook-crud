Rails.application.routes.draw do
  resources :cookbook_collections
  resources :cookbooks
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
