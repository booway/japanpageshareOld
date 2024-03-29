Japanpageshare::Application.routes.draw do
  
  resources :settings
  
  resources :searches
  
  resources :notifications
  
  resources :messages
    
  resources :invitations
  
  resources :campaign_members
  
  resources :comments
  
  resources :friend_requests
  
  resources :event_members

  resources :page_fans

  resources :page_blocked_users

  resources :pages

  resources :friendships

  resources :users
  resources :sessions, :only => [:new, :create, :destroy]

           root     :to => 'home#public'
  match '/home',    :to => 'home#home'
  match '/contact', :to => 'home#contact'
  match '/about',   :to => 'home#about'
  match '/help',    :to => 'home#help'
  match '/signin',      :to => 'sessions#new'
  match '/login',       :to => 'sessions#login'
  match '/signout',     :to => 'sessions#destroy'
  match '/signup',      :to => 'users#new'
  # The priority is based upon order of creation:
  # first created -> highest priority.
  # Sample of regular route:
  #   match 'products/:id' => 'catalog#view'
  # Keep in mind you can assign values other than :controller and :action

  # Sample of named route:
  #   match 'products/:id/purchase' => 'catalog#purchase', :as => :purchase
  # This route can be invoked with purchase_url(:id => product.id)

  # Sample resource route (maps HTTP verbs to controller actions automatically):
  #   resources :products

  # Sample resource route with options:
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

  # Sample resource route with sub-resources:
  #   resources :products do
  #     resources :comments, :sales
  #     resource :seller
  #   end

  # Sample resource route with more complex sub-resources
  #   resources :products do
  #     resources :comments
  #     resources :sales do
  #       get 'recent', :on => :collection
  #     end
  #   end

  # Sample resource route within a namespace:
  #   namespace :admin do
  #     # Directs /admin/products/* to Admin::ProductsController
  #     # (app/controllers/admin/products_controller.rb)
  #     resources :products
  #   end

  # You can have the root of your site routed with "root"
  # just remember to delete public/index.html.
  # root :to => 'welcome#index'

  # See how all your routes lay out with "rake routes"

  # This is a legacy wild controller route that's not recommended for RESTful applications.
  # Note: This route will make all actions in every controller accessible via GET requests.
  # match ':controller(/:action(/:id(.:format)))'
end
