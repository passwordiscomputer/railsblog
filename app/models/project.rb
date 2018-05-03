class Project < ApplicationRecord
  has_many :images
  validates :title, :presence => true
  validates :description, :presence => true
end
