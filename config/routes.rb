Rails.application.routes.draw do
  root 'cookbook_collections#index'
end

#   namespace :api do
#     namespace :v1 do
#       get 'cookbook_collections/index'
#       post 'cookbook_collections/create'
#       delete 'cookbook_collections/:id', to: 'cookbook_collections#destroy'
#     end
#   end

#   root 'cookbook_collections#index'
# end
