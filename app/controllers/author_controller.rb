class AuthorController < ApplicationController
    # view all authors
    def index
        @authors=Author.all
    end

    #create new author
    def addauthor
        @author = Author.new(name: params[:name], DOB: params[:DOB],email: params[:email], phone_number: params[:phone_number])
        if @author.save 
        redirect_to @author
        else
        render :addauthor
        end
    end

    #update author
    def updateauthor
        @author = Author.find(params[:id])
        if @author.update(author_params)
            redirect_to @author
        else
            render :updateauthor
        end
    end

    #delete author
    def deleteauthor
        @author = author.find(params[:id]) 
        @author.destroy
        redirect_to @author
    end



end