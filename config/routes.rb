Netheos::Application.routes.draw do

  match '/about', :to => 'page#about'

  match '/ekeynox', :to => 'ekeynox#home'
  match '/ekeynox/usb_trust', :to => 'ekeynox#usb_trust'
  match '/ekeynox/mobile_trust', :to => 'ekeynox#mobile_trust'
  match '/ekeynox/mobile_sdk_apps', :to => 'ekeynox#mobile_sdk_apps'
  match '/ekeynox/usb_devices', :to => 'ekeynox#usb_devices'

  match '/solutions', :to => 'solutions#home'
  match '/solutions/web_access_protection', :to => 'solutions#web_access_protection'
  match '/solutions/digital_signature', :to => 'solutions#digital_signature'
  match '/solutions/data_leakage_protection', :to => 'solutions#data_leakage_protection'
  match '/solutions/financial_institutions', :to => 'solutions#financial_institutions'
  match '/solutions/device_manufacturers', :to => 'solutions#device_manufacturers'
  match '/solutions/software_editors', :to => 'solutions#software_editors'

  root :to => 'page#home'

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
