# frozen_string_literal: true

class CreateTaggings < ActiveRecord::Migration[7.0]
  def change
    create_table :taggings do |t|
      t.integer :tag_id
      t.integer :book_id

      t.timestamps
    end

    Tag.create(name: 'German books ')
    Tag.create(name: 'English books ')
  end
end
