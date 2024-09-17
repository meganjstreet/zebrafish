class Project < ApplicationRecord
  belongs_to :category
  validates :name, :media_type, :campaign, :category, presence: true
  has_many_attached :project_images
  has_one_attached :main_image
  has_one_attached :client_logo
end
