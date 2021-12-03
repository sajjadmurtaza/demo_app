# frozen_string_literal: true

class Tag < ApplicationRecord
  validates :name, uniqueness: true

  has_many :taggings, dependent: :destroy
  has_many :books, through: :taggings
end
