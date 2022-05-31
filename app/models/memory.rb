class Memory < ApplicationRecord
  belongs_to :user
  has_many_attached :photos

  validates :title, :description, :date, :location, presence: true
end
