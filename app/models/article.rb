class Article < ApplicationRecord
  validates :title, presence: true
  validates :text, presence: true

  has_one_attached :cover

  scope :active, -> { where(visible: true) }
end
