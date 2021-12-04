# frozen_string_literal: true

class Book < ApplicationRecord
  validates :uid, uniqueness: true, numericality: true
  validates :price, presence: true, numericality: { float: true }
  validates :title, :description, presence: true

  scope :by_price, ->(price) { where(price: price) }
  scope :by_tags, ->(tag_ids) { joins(:taggings).where(taggings: { tag_id: tag_ids }) }

  has_many :taggings, dependent: :destroy
  has_many :tags, through: :taggings
end
