# frozen_string_literal: true

desc 'Send an email with top tags - 3 books'

task send_email_with_top_tags_books: :environment do
  top_three_books_with_most_tags = Book.joins(:taggings).group('books.id').order('count(taggings.tag_id) desc').first(3)

  top_three_books_with_most_tags.each do |book|
    book_title = book.title

    p '*===================== Sending email with following books title =====================*'
    p book_title
    UserMailer.send_books(book_title).deliver
  end
end
