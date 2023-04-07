class UsersController < ApplicationController
  def show
    @user = User.find(params[:id])
    @book = Book.new
    @books = Book.all

  end

  def edit
  end

  def new
    @book = Book.new
  end

  def index
    @book = Book.new
    @users = User.all
    @user = current_user
  end

   private

  def user_params
    params.require(:user).permit(:name, :profile_image, :introduction, :option)
  end

  def book_params
    params.require(:book).permit(:title, :body, :option)
  end

end
