class UsersController < ApplicationController
  def show
    @user =　User.find(params[:id])
    @book = @user.book
  end

  def edit
  end

  def index
    @book = Book.new
  end
end
