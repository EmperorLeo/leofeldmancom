Rails.application.routes.draw do
  # resources :admin/blog_post
  # The priority is based upon order of creation: first created -> highest priority.
  # See how all your routes lay out with "rake routes".

  # You can have the root of your site routed with "root"
  root 'application#index'

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
  #   resources :admin/blog_post, concerns: :toggleable
  #   resources :photos, concerns: :toggleable

  # Example resource route within a namespace:
  #   namespace :admin do
  #     # Directs /admin/products/* to Admin::ProductsController
  #     # (app/controllers/admin/products_controller.rb)
  #     resources :products
  #   end
  get 'admin/blog_post/list' => 'blog_post#list'
  get 'admin/blog_post/new' => 'blog_post#new'
  post 'admin/blog_post/create' => 'blog_post#create'
  patch 'admin/blog_post/update' => 'blog_post#update'
  get 'admin/blog_post/show' => 'blog_post#show'
  get 'admin/blog_post/edit' => 'blog_post#edit'
  get 'admin/blog_post/delete' => 'blog_post#delete'
  get 'admin/blog_post/update' => 'blog_post#update'

  get 'pages/blog' => "blog_post#renderBlogs"
  get 'pages/politics' => "politician#renderPolitics"
  # get "/pages/:page" => "pages#show"

end
