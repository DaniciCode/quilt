class Memory < ApplicationRecord
  belongs_to :user
  #has_many_attached :photos
  has_one_attached :photo
  has_many :scrapbook_memories

  validates :title, :description, :date, :location, presence: true
end
