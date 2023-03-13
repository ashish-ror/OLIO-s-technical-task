class Article < ApplicationRecord

	validates :article_id, presence: true, uniqueness: true
  validates :title, presence: true
  validates :likes, numericality: { greater_than_or_equal_to: 0 }

end
