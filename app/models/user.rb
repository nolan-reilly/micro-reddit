class User < ApplicationRecord
  has_many :posts
  has_many :comments

  validates :username, uniqueness: true, presence: true, length: { in: 4..24 }
  validates :password, presence: true, length: { in: 8..32 }
end
