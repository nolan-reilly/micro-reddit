class Post < ApplicationRecord
  belongs_to :user
  has_many :comments

  validates :title, presence: true, length: { in: 4..64 }
  validates :body, presence: true, length: { maximum: 1000 }
end
