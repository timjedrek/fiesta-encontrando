class Fiestum < ApplicationRecord
  validates :nombre, presence: true
  validates :descripcion, presence: true
  validates :lugar, presence: true
  validates :fetcha, presence: true
  validates :imagen, attached: true, size: { less_than: 500.kilobytes , message: 'es demasiado grande' }

  belongs_to :creator, class_name: 'User'

  has_many :attending_fiesta
  has_many :attendees, through: :attending_fiesta, source: :user
  has_one_attached :imagen

  scope :proximas, -> {where('fetcha >= ?', Time.now)}
  scope :pasadas,   -> {where('fetcha < ?', Time.now)}
end
