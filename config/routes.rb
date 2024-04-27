Rails.application.routes.draw do
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Reveal health status on /up that returns 200 if the app boots with no exceptions, otherwise 500.
  # Can be used by load balancers and uptime monitors to verify that the app is live.
  get "up" => "rails/health#show", as: :rails_health_check

  # Defines the root path route ("/")
  # root "posts#index"

  get "/posts", to:"post#index" , as:"post_index"
  get "/posts/:id", to:"post#show" , as:"post"
  #-----------------------
  get "/posts", to:"post#new" , as:"new_post"
  post "/posts", to:"post#addpost", as:"posts"
    #-----------------------
  get "/posts/:id/edit", to:"post#edit" , as:"edit_post"
  put "posts/:id/edit", to:"post#updatepost"
  #-----------------------
  delete "posts/:id/edit", to:"post#deletepost" , as:"delete_post"

  #----------------------------------------------------------------------------------
  get "/authors", to:"author#index" , as:"author_index"
  get "/authors", to:"author#show" , as:"author"
  #-----------------------
  get "/authors", to:"author#new" , as:"new_author"
  post "/authors", to:"author#addauthor", as:"authors"

end
