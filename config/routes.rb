Rails.application.routes.draw do
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  # root "articles#index"
  get "/blogs", to: "blog#blogsList"
  get "blogs/:blogID", to: "blog#singleBlog"
  post "/blogs", to: "blog#createBlog"
  post "/users/login", to: "user#loginUser"

  put "/edit/:blogID", to: "blog#edit"
  delete "/:blogID", to: "blog#destroy"

  get "/users", to: "user#usersList"

  get "/blogs/search/:title", to: "blog#searchBlogs"

  get "/users/blogs/:userID", to: "user#searchUserBlogs"
  

end
