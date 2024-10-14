class Project < ApplicationRecord
  belongs_to :category
  validates :name, :category, :title, :subtitle, presence: true
  validate :minimum_three_files
  has_many_attached :project_images
  has_one_attached :key_visual
  has_one_attached :client_logo

  private

  def minimum_three_files
    if project_images.attached? && project_images.count < 3
      errors.add(:project_images, "You must upload at least 3 files.")
    end
  end
end


