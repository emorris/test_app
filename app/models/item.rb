class Item < ActiveRecord::Base
  mount_uploader :picture, ItemPictureUploader
  process_in_background :picture
end
