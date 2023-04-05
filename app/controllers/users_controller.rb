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
  end
end
