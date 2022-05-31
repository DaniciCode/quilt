class Memory < ApplicationRecord
  belongs_to :user

  validates :title, :description, :date, :location, presence: true
end
