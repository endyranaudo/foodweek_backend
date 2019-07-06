class User < ApplicationRecord
  has_many :user_ingredients
  has_many :ingredients, through: :user_ingredients

  has_secure_password

  validates :username, uniqueness: true
  validates :email, uniqueness: true
  validates :password, presence: true
  validates :password, length: { minimum: 3, maximum: 12 }

end

# dependent :destroym