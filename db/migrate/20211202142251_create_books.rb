# frozen_string_literal: true

class CreateBooks < ActiveRecord::Migration[7.0]
  def change
    create_table :books do |t|
      t.integer :uid
      t.string :title
      t.text :description
      t.float :price
      t.boolean :free, default: false

      t.timestamps
    end
  end
end
