class User < ApplicationRecord
    has_many :foods
    
    has_secure_password
	validates_confirmation_of :password, :message => "should match confirmation" 
end
