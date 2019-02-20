class Article < ApplicationRecord
  validates :title, presence: true, length: { in: 1..50 }
  validates :body, presence: true, length: { in: 1..300 }
  validates :user_id, numericality: true
  belongs_to :user, dependent: :destroy
  has_many :comments
end
