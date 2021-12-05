class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  has_many :opinions, dependent: :destroy
  has_many :fairs, through: :opinions
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable

  def to_s
    name
  end
end
