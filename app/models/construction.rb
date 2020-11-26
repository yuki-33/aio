class Construction < ApplicationRecord
  mount_uploader :image, ConstructionImageUploader
  mount_uploader :image_2, ConstructionImageUploader
  mount_uploader :image_3, ConstructionImageUploader
  mount_uploader :image_4, ConstructionImageUploader
  mount_uploader :image_5, ConstructionImageUploader
  mount_uploader :image_6, ConstructionImageUploader
  mount_uploader :image_7, ConstructionImageUploader
  mount_uploader :image_8, ConstructionImageUploader
  mount_uploader :image_9, ConstructionImageUploader
  mount_uploader :image_10, ConstructionImageUploader
  # mount_uploaders :picture, PictureUploader


  validates :name, :design, :area, :type, :built_year, :filter, :type, :image, :image_2, :image_3, presence: true
  # has_many :pictures, dependent: :destroy
  # accepts_nested_attributes_for :pictures
  belongs_to :type
  belongs_to :filter

end
