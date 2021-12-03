# frozen_string_literal: true

module BooksHelper
  def free?(free)
    return 'Yes' if free

    'No'
  end
end
