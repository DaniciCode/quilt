class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable
  validates :first_name, :last_name, :age, presence: true
  belongs_to :families
  has_many :user_memories, :class_name => 'Memory', :foreign_key => 'user_id', dependent: :destroy
  has_one_attached :photo

  def name
    "#{first_name} #{last_name}"
  end

  def years_old
    (Date.today - age).to_i / 365
  end
end
