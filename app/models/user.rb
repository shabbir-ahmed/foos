class User < ApplicationRecord
    has_many :users
    
    has_secure_password
	validates_confirmation_of :password, :message => "should match confirmation" 
end
