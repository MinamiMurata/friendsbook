class Feed < ApplicationRecord
  mount_uploader :picture, PictureUploader
  validates :picture, presence: true
  validates :content, length: { in: 1..255 }
  belongs_to :user
end
