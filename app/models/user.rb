class User < ApplicationRecord
    has_many :foods

    mount_uploader :image, AvatarUploader
    
    has_secure_password
	validates_confirmation_of :password, :message => "should match confirmation" 
	
	def to_param
	    "#{id}  #{full_name}".parameterize
    end
end
