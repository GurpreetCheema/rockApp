Rails.application.routes.draw do

  # get 'posts/new'
  # get 'posts/index'
  # get 'posts/show'

  # take us to the homepage which should show all the posts if god is graceful - This is the main page
  root 'posts#index'

  # create posts, see posts, and get all pages
  resources :posts

  devise_for :users
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
