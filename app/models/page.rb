class Page < ApplicationRecord
  paginates_per 15
  
  scope :search, -> (name) { where('name LIKE :name or description LIKE :name or tags LIKE :name', name: '%' + name + '%') }
end
