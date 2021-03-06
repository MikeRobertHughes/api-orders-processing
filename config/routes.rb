Rails.application.routes.draw do
  resources :comments
  get    '/users',                     to: 'users#index'
  get    '/users/new',                 to: 'users#new'
  get    '/users/:id',                 to: 'users#show'
  get    '/users/:id/items',           to: 'users#find_items_by_user'
  get    '/users/:id/purchases/total', to: 'users#total_purchases_by_user'
  post   '/users',                     to: 'users#create'
  put    '/users/:id',                 to: 'users#update'
  delete '/users/:id',                 to: 'users#destroy'
  get    '/items',                     to: 'items#index'
  get    '/items/new',                 to: 'items#new'
  get    '/items/:id',                 to: 'items#show'
  get    '/items/:id/users',           to: 'items#find_users_by_item'
  post   '/items',                     to: 'items#create'
  put    '/items/:id',                 to: 'items#update'
  delete '/items/:id',                 to: 'items#destroy'
  get    '/addresses',                 to: 'addresses#index'
  get    '/addresses/new',             to: 'addresses#new'
  get    '/addresses/:id',             to: 'addresses#show'
  post   '/addresses',                 to: 'addresses#create'
  put    '/addresses/:id',             to: 'addresses#update'
  delete '/addresses/:id',             to: 'addresses#destroy'
  get    '/orders',                    to: 'orders#index'
  get    '/orders/new',                to: 'orders#new'
  get    '/orders/:id',                to: 'orders#show'
  post   '/orders',                    to: 'orders#create'
  put    '/orders/:id',                to: 'orders#update'
  delete '/orders/:id',                to: 'orders#destroy'
  get    '/reports/purchases',         to: 'reports#top_five_purchased_items'
  get    '/reports/purchases/total',   to: 'reports#total_purchases'
  root   'users#index'
end
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
  #     #     resources :sales do
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

