class Comment < ApplicationRecord
  validates :title, presence: true, length: { in: 1..20 }
  validates :body, presence: true, length: { in: 1..300 }
  validates :user_id, numericality: true
  validates :article_id, numericality: true
  belongs_to :user, dependent: :destroy
  belongs_to :article, dependent: :destroy
end
