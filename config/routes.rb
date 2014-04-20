CompleteNesCollection::Application.routes.draw do
  
  get "developers", to: 'developers#index', as: 'developers'
  get "developers/:id", to: 'developers#show', as: 'developer'
  
  get 'publishers', to: 'publishers#index', as: 'publishers'
  get 'publishers/:id', to: 'publishers#show', as: 'publisher'
  
  get 'genres', to: 'genres#index', as: 'genres'
  get 'genres/:id', to: 'genres#show', as: 'genre'
  
  get 'games', to: 'games#index', as:'games'  
  get 'games/:id', to: 'games#show', as: 'game'
  
  get 'about_us', to: 'about_us#show', as: 'about_us'
  
  get 'search', to: 'store#search', as: 'search'
  get 'search_results', to: 'store#search_results', as: 'search_results'
  
  root 'store#index'
  
  devise_for :admin_users, ActiveAdmin::Devise.config
  ActiveAdmin.routes(self)
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
