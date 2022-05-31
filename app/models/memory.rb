class Memory < ApplicationRecord
  belongs_to :user
  #has_many_attached :photos
  has_one_attached :photo

  validates :title, :description, :date, :location, presence: true
end
