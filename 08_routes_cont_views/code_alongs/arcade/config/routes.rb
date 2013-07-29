Arcade::Application.routes.draw do
  root 'welcome#index' # rails helper to set up main index
  
  get '/magic-eight-ball' => 'magic_eight_ball#index', :as => :magic_eight_ball # naming the route for internal use/views
  
  get '/magic-eight-ball/:question' => 'magic_eight_ball#ask', :as => :ask_question
  
  get '/secret-number' => 'secret_number#index', :as => :secret_number # naming the route for internal use/views
 
  get '/secret-number/guess-again' => 'secret_number#guess_again', :as => :guess_again # naming the route for internal use/views
   
  get '/secret-number/:guess' => 'secret_number#guess', :as => :secret_number_guess # naming the route for internal use/views
  
  get '/rock-paper-scissors' => 'rock_paper_scissors#index', :as => :rock_paper_scissors # naming the route for internal use/views
  get '/rock-paper-scissors/fight-again' => 'rock_paper_scissors#fight_again', :as => :fight_again # naming the route for internal use/views
  get '/rock-paper-scissors/:weapon' => 'rock_paper_scissors#fight', :as => :rock_paper_scissors_fight # naming the route for internal 
  
  
  
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
