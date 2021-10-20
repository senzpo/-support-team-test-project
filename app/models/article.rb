class Article < ApplicationRecord
  validates :title, presence: true
  validates :text, presence: true

  has_one_attached :cover
end
