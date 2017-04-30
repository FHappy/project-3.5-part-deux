Rails.application.routes.draw do
  get 'user/index'

  devise_for :users

  get 'cities/:city_id/post/new' => "post#new", as: "post_new"

  post 'cities/:city_id/post' => "post#create", as: "post_create"

  get 'posts/edit/:post_id' => "post#edit", as: "post_edit"

  get 'posts/:post_id' => "post#show", as: "post_show"

  put 'posts/:post_id' => "post#update", as: "post_update"

  delete 'posts/:post_id' => "post#delete", as: "post_delete"

  get 'city/index'

  get 'cities/:city_id' => "city#show", as: "city_show"

  get 'static_pages/home'

  get 'users' => "user#index"

  get 'users/:user_id' => "user#show", as: "user_show"
  
  get 'users/:user_id/profile' => "user#profile", as: "user_profile"

  get 'users/:user_id/following' => "user#following", as: "user_following"

  get 'users/:user_id/followers' => "user#followers", as: "user_followers"

  get 'posts/:post_id/comments/new' => "comments#new", as: "comment_new"

  post 'posts/:post_id/comments' => "comments#create", as: "comment_create"

  delete 'posts/:post_id/comments/:comment_id' => "comments#delete", as: "comment_delete"

  resources :bonds, only: [:create, :destroy]

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html

  root 'static_pages#home'
end
