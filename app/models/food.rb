class Food < ApplicationRecord
  belongs_to :user
  mount_uploader :image1, FoodImgUploader
  mount_uploader :image2, FoodImgUploader
  mount_uploader :image3, FoodImgUploader
  
  def to_param
	    "#{id}  #{title}".parameterize
    end
end
