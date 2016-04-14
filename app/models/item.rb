class Item < ActiveRecord::Base
  mount_uploader :picture, ItemPictureUploader
end
