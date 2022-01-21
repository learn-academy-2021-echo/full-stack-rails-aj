Rails.application.routes.draw do
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  # http_verb '/name_of_route' => 'name_of_controller#name_of_method'
  get '/blogposts' => 'blog_post#index', as: 'blogposts'
  get '/blogposts/new' => 'blog_post#new', as: 'new_blogpost'
  get '/blogposts/:id' => 'blog_post#show', as: 'blogpost'

  root 'blog_post#index'
end
