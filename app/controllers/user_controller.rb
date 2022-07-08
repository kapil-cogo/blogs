class UserController < ApplicationController
    protect_from_forgery with: :null_session

    def usersList
        user = User.all
        render json: user
    end

    def searchUserBlogs
        u_blogs = Blog.where(user_id: params[:userID]) 
        render json: u_blogs
    end

    def loginUser
        user = User.find_by(email: params['userEmail'])

        if(user)
            if(user.password === params['userPassword'])
                render json: user
            else
                message={
                    "text"=>"Wrong Password"
                }
                render json: message
            end
        else
            message={
                    "text"=> "Wrong Credentials"
                }
                render json: message
        end        
    end

end