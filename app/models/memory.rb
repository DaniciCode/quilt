class Memory < ApplicationRecord
  belongs_to :user
  belongs_to :scrapbook_memory
  has_many :photos

  validates :title, :description, :date, :location, presence: true
end
