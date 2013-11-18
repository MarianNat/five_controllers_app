FiveControllersApp::Application.routes.draw do
  root to: "url1#index"
  get "url5/index"
  get "url4/index"
  get "url3/index"
  get "url2/index"
  get "url1/index"
  get "url1", to: "url1#index"
  get "url2", to: "url2#index"
  get "url3", to: "url3#index"
  get "url4", to: "url4#index"
  get "url5", to: "url5#index"
  get "url1/new"
  get "url2/new"
  get "url3/new"
  get "url4/new"
  get "url5/new"
  post "url1/create"
  post "url2/create"
  post "url3/create"
  post "url4/create"
  post "url5/create"
  put "url1/update"
  put "url2/update"
  put "url3/update"
  put "url4/update"
  put "url5/update"
  #get "url1/create"
  get "url1/edit"
  get "url2/edit"
  get "url3/edit"
  get "url4/edit"
  get "url5/edit"
  delete "url1/destroy"
  delete "url2/destroy"
  delete "url3/destroy"
  delete "url4/destroy"
  delete "url5/destroy"
  get "url1/new_message"
  get "url2/new_message"
  get "url3/new_message"
  get "url4/new_message"
  get "url5/new_message"
  post "url1/create_message"
  post "url2/create_message"
  post "url3/create_message"
  post "url4/create_message"
  post "url5/create_message"


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
