class Project < ApplicationRecord
	mount_uploader :image, ImageUploader
	acts_as_taggable
	
	belongs_to :user
end
