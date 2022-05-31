class Memory < ApplicationRecord
  belongs_to :user
  belongs_to :scrapbook_memory
  has_many_attached :photos

  validates :title, :description, :date, :location, presence: true
end
