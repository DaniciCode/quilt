class Scrapbook < ApplicationRecord
  belongs_to :user
  belongs_to :family
  has_many :scrapbook_memories
  has_many :memories, through: :scrapbook_memories
  has_one_attached :photo
end
