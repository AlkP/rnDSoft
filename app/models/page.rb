class Page < ApplicationRecord
  validates :name, presence: true
  validates :name, length: { minimum: 4 }
  validates :description, presence: true
  validates :description, length: { minimum: 4 }
  
  paginates_per 15
  
  scope :search, -> (name) { where('name LIKE :name or description LIKE :name or tags LIKE :name', name: '%' + name + '%') }
end
