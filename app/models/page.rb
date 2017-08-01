class Page < ApplicationRecord
  validates :name, presence: true
  validates :name, length: { minimum: 4 }
  validates :description, presence: true
  validates :description, length: { minimum: 4 }
  
  paginates_per 15
  
  enum category: [ :cooking, :humor, :news ]
  
  scope :search, -> (name) { where("name LIKE :name or description LIKE :name or tags LIKE :name or category = :category", name: '%' + name + '%', category: Page.categories[name.to_sym]) }
end
