class User < ApplicationRecord
    
    #=> Validations rule
    validates_presence_of :full_name, :email, :password, :on => :create
    validates_uniqueness_of :email,  :on => :create
    validates_format_of :email, :with => /\A([^@\s]+)@((?:[-a-z0-9]+\.)+[a-z]{2,})\z/i
    
    #=> Relationship
    has_many :foods
    
    #=> Profile picture upload
    mount_uploader :image, AvatarUploader
    
    has_secure_password
	validates_confirmation_of :password, :message => "should match confirmation" 
	
	#=> Human readable URL parameter
	def to_param
	    "#{id}  #{full_name}".parameterize
    end
end
