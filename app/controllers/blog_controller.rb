class BlogController < ApplicationController
    protect_from_forgery with: :null_session

    def blogsList
        blog = Blog.all

        render json: blog
    end

    def singleBlog
        id  = params["blogID"]
        single = Blog.find(id);

        render json: single
    end
    
    def createBlog
        insert_blog = {
        "title" => params["title"],
        "short_desc" => params["short_desc"],
        "img_link" => params['img_link'],
        "description" => params['description']
        }

        blog = Blog.new(insert_blog);
        blog.save
    
        render json: blog

    end

    def destroy
        id = Blog.find(params["blogID"])
        id.destroy

    end

    def edit
        update_blog = Blog.find(params["blogID"])
        blog = {
            "title" => params["title"],
            "short_desc" => params["short_desc"],
            "img_link" => params['img_link'],
            "description" => params['description']
        }

        update_blog.update(blog)

        render json: update_blog
    end



end