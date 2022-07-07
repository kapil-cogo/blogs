Rails.application.routes.draw do
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  # root "articles#index"
  get "/blogs", to: "blog#blogsList"
  get "/blogs/:blogID", to: "blog#singleBlog"
  post "/blogs", to: "blog#createBlog"
  put "/blogs/:blogID", to: "blog#edit"
  delete "/blogs/:blogID", to: "blog#destroy"
  

end
