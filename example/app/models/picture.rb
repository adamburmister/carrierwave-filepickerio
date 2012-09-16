class Picture < ActiveRecord::Base
  mount_uploader :image, ImageUploader
  attr_accessible :title, :image, :image_cache, :remote_image_url
end
