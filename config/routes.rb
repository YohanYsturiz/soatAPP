Rails.application.routes.draw do
  # se utilizan para el manejo de rutas segun el modulo y la accion que se desee realizar.
  
  #entre estas se encuentran 
  #GET /coches => coches_controller # index
  #GET /coches/new => coches_controller # new
  #POST /coches/:id => coches_controller # show
  #GET /coches/:id => coches_controller # show
  #PUT/PATCH /coches/:id => coches_controller #update
  
  get "coches/search_placa"
  post "coches/search_placa"
  
  get "rates/no_cubre"
  post "rates/no_cubre"
  
  get "rates/cotizacion"
  post "rates/cotizacion"
  
  post "user" => "user#edit"
  
  get 'coche/index'


  # get 'main/home'
  # ruta que inicia por defecto cuando se inicia el servidor 
  # root 'main#home'
  #root 'users#sign_in'

  devise_for :users
  
  authenticated :user do
      resources :coches
      resources :vehiculos
      resources :rates
      root 'main#home', as: :authenticated_root
  end
  
  unauthenticated :user do
      root 'main#unregistered', as: :unauthenticated_root
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
