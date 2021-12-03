# frozen_string_literal: true

class UserMailer < ApplicationMailer
  def send_books(book_title)
    @book_title = book_title

    mail(to: 'xyz@test.com', subject: @book_title)
  end
end
