Rails.application.routes.draw do
  
  root 'welcome#show'
  
  get 'users/' => 'users#index'

  post 'users/' => 'users#create'

  get 'users/new' => 'users#new', as: :new_user

  get 'users/edit' => 'users#edit'

  patch 'users' => 'users#update'

  put 'users' => 'users/update'

  delete 'users' => 'users#destroy'

  get 'events/' => 'events#index'
  
  post 'events/' => 'events#create'
   
  get 'events/new' => 'events#new', as: :new_event
  
  post "events/:id/edit" => "events#edit", as: :edit_event

  get "events/:id" => "events#show", as: :event
  
  patch "events/:id" => "events#update"

  put 'event/' => 'events#update'

  delete "events/:id" => "events#destroy"
  
  post '/login', to: 'sessions#create', as: :create_session

  get '/login', to: 'sessions#new', as: :login

  delete '/logout', to: 'sessions#destroy'

  get 'venue' => 'venue#index'

  post 'venue' => 'venue#create'

  get 'venue/new' => 'venue#new'

  get 'venue/edit' => 'venue#edit'

  get 'venue' => 'venue#show'

  patch 'venue' => 'venue#update'

  put 'venue' => 'venue#update'

  delete 'venue' => 'venue#destroy'

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

