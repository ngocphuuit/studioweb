class Album < ApplicationRecord
	has_many :images
	belongs_to :service
end
