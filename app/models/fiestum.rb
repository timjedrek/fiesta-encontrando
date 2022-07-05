class Fiestum < ApplicationRecord
  validates :nombre, presence: true
  validates :descripcion, presence: true

  belongs_to :creator, class_name: 'User'

  has_many :attending_fiesta
  has_many :attendees, through: :attending_fiesta, source: :user
end
