SecondApp::Application.routes.draw do
  devise_for :users
  resources :users, only: [:show,:index,:destroy]
  root  'top_pages#home'
  match '/member',    to: 'top_pages#member',    via: 'get'
  match '/purchase',   to: 'top_pages#purchase',   via: 'get'
  match '/use', to: 'top_pages#use', via: 'get'
  match '/out',   to: 'top_pages#out',   via: 'get'
  match '/disclaimer',   to: 'top_pages#disclaimer',   via: 'get'
  match '/inquiry',   to: 'top_pages#inquiry',   via: 'get'
  match '/withdrawal',   to: 'top_pages#withdrawal',   via: 'get'
  match '/searchrequests',   to: 'searchrequests#index',   via: 'get'
  match '/searchrequests/new',   to: 'searchrequests#new',   via: 'get'
  match '/searchrequests/create',   to: 'searchrequests#create',   via: 'get'
  # The priority is based upon order of creation: first created -> highest priority.
  # See how all your routes lay out with "rake routes".

  # You can have the root of your site routed with "root"
  # root 'welcome#index'

  # Example of regular route:
  #   get 'products/:id' => 'catalog#view'

  # Example of named route that can be invoked with purchase_url(id: product.id)
  #   get 'products/:id/purchase' => 'catalog#purchase', as: :purchase

  # Example resource route (maps HTTP verbs to controller actions automatically):
  #   resources :products

  # Example resource route with options:
  #   resources :products do
  #     member do
  #       get 'short'
  #       post 'toggle'
  #     end
  #
  #     collection do
  #       get 'sold'
  #     end
  #   end

  # Example resource route with sub-resources:
  #   resources :products do
  #     resources :comments, :sales
  #     resource :seller
  #   end

  # Example resource route with more complex sub-resources:
  #   resources :products do
  #     resources :comments
  #     resources :sales do
  #       get 'recent', on: :collection
  #     end
  #   end

  # Example resource route with concerns:
  #   concern :toggleable do
  #     post 'toggle'
  #   end
  #   resources :posts, concerns: :toggleable
  #   resources :photos, concerns: :toggleable

  # Example resource route within a namespace:
  #   namespace :admin do
  #     # Directs /admin/products/* to Admin::ProductsController
  #     # (app/controllers/admin/products_controller.rb)
  #     resources :products
  #   end
end
