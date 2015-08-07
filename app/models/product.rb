class Product < ActiveRecord::Base
  mount_uploader :product_image, PictureUploader
end
