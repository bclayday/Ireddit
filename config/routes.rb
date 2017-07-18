Rails.application.routes.draw do
   # map.resources :tasks

  resources :comments
  devise_for :users
  #devise_for :installs
  resources :links do 
  
    resources :comments
  end
  root "links#index"
  put "likes", to: "links#upvote"
  put "dislike", to: "links#downvote"
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
