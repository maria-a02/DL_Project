class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  validates :name, presence: true
  has_many :opinions, dependent: :destroy
  has_many :fairs, through: :opinions
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable
  
  def to_s
    name
  end
end
