class Showcase < ApplicationRecord
	mount_uploader :image, ImageUploader
  belongs_to :user

  validate  :image_size
  private

    # Validates the size of an uploaded picture.
    def picture_size
      if image.size > 15.megabytes
        errors.add(:image, "should be less than 15MB")
      end
    end
end
