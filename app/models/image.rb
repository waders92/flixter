class Image < ActiveRecord::Base
  mount_uploader :image, ImageUploader
  belongs_to :course
end
