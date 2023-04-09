class BooksController < ApplicationController

  def new
    @book = Book.new
  end

  def create
    @book = Book.new(book_params)
    @book.user_id = current_user.id
    if @book.save
    flash[:notice] = "You have created book successfully."
    redirect_to book_path(@book.id)
    else
      render :new
    end
  end

  def show
    @book = Book.find(params[:id])
    @user = User.find(@book.user[:id])
    @book_new = Book.new


  end

  def index
    @books = Book.all
    @book = Book.new
    @users = User.all
    @user = current_user
  end

  def edit
    @book = Book.find(params[:id])
  end

  def destroy
    book = Book.find(params[:id])
    book.destroy
    redirect_to books_path
  end


  def update
    book = Book.find(params[:id])
    if book.update(book_params)
    flash[:notice] = "You have created book successfully."
    redirect_to book_path(@book.id)
    else
      render :edit
    end

    redirect_to book_path(book.id)
  end

 private

  def book_params
    params.require(:book).permit(:title, :body)
  end


end



