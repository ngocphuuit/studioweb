class Image < ApplicationRecord
  belongs_to :album
  mount_uploader :url, ImageUploader
  serialize :url
end
