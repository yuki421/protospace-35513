class Prototype < ApplicationRecord
  belongs_to :user
  has_many :comments, dependent: :destroy
  has_one_attached :image
  
  validates :image, presence: true
  validates :title, :catch_copy, :concept, presence: true
end
