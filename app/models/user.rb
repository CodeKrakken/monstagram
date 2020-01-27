class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :lockable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable,
         :confirmable, :timeoutable
  validates :first_name, presence: true, length: { minimum: 1 }
  # validates: last_name, presence: true, length: { minimum: 1 }
  validates :password, confirmation: true
end
