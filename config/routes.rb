Rails.application.routes.draw do

  devise_for :users
  resources :comments, only: [:edit, :destroy, :update, :create]

  resources :blog_posts

  root 'blog_posts#index'

  get 'your_posts' => 'blog_posts#your_posts'

  get 'user_profile' => 'blog_posts#user_profile'

end
# get 'document' => 'blog_posts#newroute'
# HOW TO ADD ROUTES  (where newroute is created in the view and controller)
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
