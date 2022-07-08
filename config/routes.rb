Rails.application.routes.draw do
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  # root "articles#index"
  get "/blogs", to: "blog#blogsList"
  get "/:blogID", to: "blog#singleBlog"
  post "/blogs", to: "blog#createBlog"
  put "/edit/:blogID", to: "blog#edit"
  delete "/:blogID", to: "blog#destroy"

  get "/blogs/search/:title", to: "blog#searchBlogs"
  

end
