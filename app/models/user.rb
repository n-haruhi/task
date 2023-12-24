class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable

  has_many :todos, dependent: :destroy

  validates :name, presence:true, uniqueness: true,  length: { minimum: 2 }
  validates :email, presence:true, uniqueness: true
  validates :password, presence:true, uniqueness: true, length: { minimum: 6 }

end
