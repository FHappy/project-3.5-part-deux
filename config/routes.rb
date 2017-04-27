Rails.application.routes.draw do
  get 'user/index'

  devise_for :users

  get 'post/new'

  get 'posts/:post_id' => "post#show"

  get 'city/index'

  get 'cities/:id' => "city#show"

  get 'static_pages/home'

  get 'user/:user_id' => "user#show", as: "user_show"


  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html

  root 'static_pages#home'
end
