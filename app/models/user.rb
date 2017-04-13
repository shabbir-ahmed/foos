class User < ApplicationRecord
    
    validates_presence_of :full_name, :email, :password, :on => :create
    validates_uniqueness_of :email,  :on => :create
    validates_format_of :email, :with => /\A([^@\s]+)@((?:[-a-z0-9]+\.)+[a-z]{2,})\z/i
    has_many :foods

    mount_uploader :image, AvatarUploader
    
    has_secure_password
	validates_confirmation_of :password, :message => "should match confirmation" 
	
	def to_param
	    "#{id}  #{full_name}".parameterize
    end
end
