class BooksController < ApplicationController

  def new
    @book = Book.new
  end

  def create
    @book = Book.new(book_params)
    @book.user_id = current_user.id
    if @book.save
    redirect_to book_path(@book.id)
    else
      render :new
    end
  end

  def show
  end

  def index
    @books = Book.all
    @book = Book.new
    @users = User.all
    @user = current_user
  end

  def edit
  end

 private

  def book_params
    params.require(:book).permit(:title, :body, :option)
  end

  def user_params
    params.require(:user).permit(:name, :profile_image, :introduction, :option)
  end

end



