class BooksController < ApplicationController
  def all_books
    @all_books= Book.all
    @all_books
end
  