Netheos::Application.routes.draw do


  match '/solutions/banking', :to => 'pages#banking'
  match '/solutions/payment', :to => 'pages#payment'
  match '/solutions/contract', :to => 'pages#contract'
  match '/ekeynox', :to => 'pages#ekeynox'

  match '/lightbox/mobile_sdk_lb', :to => 'lightbox#mobile_sdk_lb'
  match '/lightbox/solutions_lb', :to => 'lightbox#solutions_lb'

  match '/about', :to => 'pages#about'
  match '/privacy', :to => 'pages#privacy'

  match '/services', :to => 'services#home'
  
  
  
  match '/ekeynox/apps', :to => 'ekeynox#apps'
  match '/ekeynox/usb_trust', :to => 'ekeynox#usb_trust'
  match '/ekeynox/mobile_sdk', :to => 'ekeynox#mobile_sdk'
  match '/ekeynox/usb_devices', :to => 'ekeynox#usb_devices'
  match '/ekeynox/usb_applications', :to => 'ekeynox#usb_applications'
  match '/ekeynox/usb_management', :to => 'ekeynox#usb_management'

  match '/solutions', :to => 'solutions#home'
  match '/solutions/web_access_protection', :to => 'solutions#web_access_protection'
  match '/solutions/instant_contract_signing', :to => 'solutions#instant_contract_signing'
  match '/solutions/document_privacy', :to => 'solutions#document_privacy'
  match '/solutions/financial_institutions', :to => 'solutions#financial_institutions'
  match '/solutions/device_manufacturers', :to => 'solutions#device_manufacturers'
  match '/solutions/software_compagnies', :to => 'solutions#software_compagnies'

  root :to => 'pages#home'

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
  # root :to => "welcome#index"

  # See how all your routes lay out with "rake routes"

  # This is a legacy wild controller route that's not recommended for RESTful applications.
  # Note: This route will make all actions in every controller accessible via GET requests.
  # match ':controller(/:action(/:id(.:format)))'
end
