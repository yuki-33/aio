class Construction < ApplicationRecord
  mount_uploader :image, ConstructionImageUploader
  # validates :name, presence: true
  # scope :by_year, ->{ order(built_year: :asc) }
end
