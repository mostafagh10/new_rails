class Author < ApplicationRecord
    validates :name,presence:true
    validates :DOB,presence:true
    validates :email,presence:true
    validates :phone_number,presence:true
    validates :email, format: { with: URI::MailTo::EMAIL_REGEXP } 

end
