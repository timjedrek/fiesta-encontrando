class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable

  has_many :created_fiesta, foreign_key: "creator_id", class_name: "Fiestum", dependent: :destroy

  has_many :attending_fiesta, dependent: :destroy
  has_many :attended_fiesta, through: :attending_fiesta, source: :fiestum, foreign_key: "attendee_id"

  validates_uniqueness_of :username
end