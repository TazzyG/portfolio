class Project < ApplicationRecord
	mount_uploader :image, ImageUploader
	acts_as_taggable
	
	belongs_to :user
	has_many :project_infos
end
