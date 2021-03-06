class BooksController < ApplicationController
  def show
    @book = Book.find(params[:id])
  end
  
  def new
    @book = Book.new
  end

  def list
  end
  
  def index
    @books = Book.all
  end
  
  def edit
    @book = Book.find(params[:id])
  end
  
  def create
    @book = Book.new(book_params)
    if @book.save
      redirect_to @book
    else
      render 'new'
    end
  end
  
  def update
    @book = Book.find(params[:id])
    if @book.update_attributes(book_params)
      redirect_to @book
    else
      render 'edit'
    end
  end
  
  private
  
    def book_params
      params.require(:book).permit(:isbn, :title, :description, :author, :status)
    end
  
end
