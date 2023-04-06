class UsersController < ApplicationController
  def show
    @user = User.find(params[:id])
    @book = @user.books
  end

  def edit
  end

  def index
    @book = Book.new
    @users = User.all
    @user = current_user
  end

   private

  def user_params
    params.require(:user).permit(:name, :profile_image, :introduction)
  end

end
