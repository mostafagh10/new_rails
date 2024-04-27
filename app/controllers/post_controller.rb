class PostController < ApplicationController
    # view all posts
    def index
        @posts=Post.all
    end

    def show
        @post=Post.find(params[:id])
    end

    #create new post
    def new 
        @post=Post.new
    end

    def addpost
        @post = Post.new(title: params[:title], comment: params[:comment])
        if @post.save 
        redirect_to @post
        else
        render :new
        end
    end

    #update post
    def edit
        @post = Post.find(params[:id])
    end

    def updatepost
        @post = Post.find(params[:id])
        if @post.update(post_params)
            redirect_to @post
        else
            render :edit
        end
    end

    #delete post
    def deletepost
        @post = post.find(params[:id]) 
        @post.destroy
        redirect_to @post
    end



end