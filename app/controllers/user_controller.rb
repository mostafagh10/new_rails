class UserController < ApplicationController
    def index
        user = User.create({name:"mostafa" , age:25})
    end
end