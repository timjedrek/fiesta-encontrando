class Fiestum < ApplicationRecord
  validates :nombre, presence: true
  validates :descripcion, presence: true

  belongs_to :creator, class_name: 'User'
end
