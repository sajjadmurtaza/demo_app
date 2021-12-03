# frozen_string_literal: true

class Book < ApplicationRecord
  validates :uid, uniqueness: true, numericality: true
  validates :price, presence: true, numericality: { float: true }
  validates :title, :description, presence: true

  has_many :taggings, dependent: :destroy
  has_many :tags, through: :taggings
end
