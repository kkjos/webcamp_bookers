class BooksController < ApplicationController
  def index
  end

  def show
  end

  def new
    @book =  Book.new
  end
  
  def create
    book = Book.new(book_params)
    book.save
    redirect_to books_show_path(params[:id])
  end

  def edit
  end
  
  private
  def book_params
    params.reqiure(:Book).permit(:title, :body)
  end
  
end
