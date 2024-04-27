class UserController < ApplicationController
    # view all posts
    def index
        @posts=Post.all
    end

    #create new post
    def addpost
        @post = Post.new(title: params[:title], comment: params[:comment])
        if @post.save 
        redirect_to @post
        else
        render :addpost
        end
    end

    #update post
    def updatepost
        @post = Post.find(params[:id])
        if @post.update(post_params)
            redirect_to @post
        else
            render :updatepost
        end
    end

    #delete post
    def deletepost
        @post = post.find(params[:id]) 
        @post.destroy
        redirect_to @post
    end



end