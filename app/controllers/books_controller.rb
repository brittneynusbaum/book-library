class BooksController < ApplicationController

  def index
    book = Book.all
    render json: book.as_json
  end

  def show
    book = Book.find_by(id: params[:id])
    render json: book.as_json
  end

  def create
    book = Book.new(
      title: params[:title],
      author: params[:author],
      rating_out_of_five: params[:rating_out_of_five],
      summary: params[:summary],
      book_image: params[:book_image]
    )
    book.save
    render json: book.as_json
  end

  def update
    book = Book.find_by(id: params[:id])
    book.title = params[:title] || book.title
    book.author = params[:author] || book.author
    book.rating_out_of_five = params[:rating_out_of_five] || book.rating_out_of_five
    book.summary = params[:summary] || book.summary
    book.book_image = params[:book_image] || book.book_image
    book.save
    render json: book.as_json
  end

  def destroy
    book = Book.find_by(id: params[:id])
    book.destroy
    render json: "#{book.title} was removed from your library."
  end
end
