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

  get 'cities/:city_id' => "city#show"

  get 'static_pages/home'

  get 'user/:user_id' => "user#show", as: "user_show"


  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html

  root 'static_pages#home'
end
