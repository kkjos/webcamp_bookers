class BooksController < ApplicationController
  def index
    @books = Book.all
  end

  def show
    @book = Book.find(params[:id])
    blog.save
    redirect_to book_path
  end

  def new
    @book = Book.new
  end

  def create
    book = Book.new(book_params)
    book.save
    redirect_to books_path
  end

  def edit
  end

  private
  def book_params
    params.reqiure(:Book).permit(:title, :body)
  end

end
