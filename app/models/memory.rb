class Memory < ApplicationRecord
  belongs_to :user
  has_many :photos

  validates :title, :description, :date, :location, presence: true
end
