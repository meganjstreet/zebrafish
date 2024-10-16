class Project < ApplicationRecord
  belongs_to :category
  has_many_attached :project_images
  has_one_attached :key_visual
  has_one_attached :client_logo
  validates :name, :category, :title, :subtitle, presence: true
  validates :project_images, length: { minimum: 3 }
  validates :key_visual, presence: true
end
