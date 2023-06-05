class Feed < ApplicationRecord
  mount_uploader :picture, PictureUploader
  validates :content, length: { in: 1..255 }
end
