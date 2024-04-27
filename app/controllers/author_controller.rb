class AuthorController < ApplicationController
    # view all authors
    def index
        @authors=Author.all
    end

    def show
        @author=Author.find(params[:id])
    end

    #create new author
    def new 
        @author=Author.new
    end

    def addauthor
        @author = Author.new(name: params[:name], DOB: params[:DOB],email: params[:email], phone_number: params[:phone_number])
        if @author.save 
        redirect_to @author
        else
        render :new
        end
    end



end