class Memory < ApplicationRecord
  belongs_to :user
  belongs_to :scrapbook_memory

  validates :title, :description, :date, :location, presence: true
end
