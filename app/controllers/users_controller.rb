class UsersController < ApplicationController
  def show
    @user = User.find(params[:id])
    @book = Book.new
    @books = @user.books
  end



  def edit
    @user = User.find(params[:id])
  end

  def new
    @book = Book.new
  end

  def index
    @book = Book.new
    @users = User.all
    @user = current_user
  end

  def update
    user = User.find(params[:id])
    if user.update(user_params)
    flash[:notice] = "You have updated user successfully."
    redirect_to user_path(user.id)
    end
  end


  def destroy
    user = User.find(params[:id])
    user.destroy
    redirect_to user_path(user.id)
  end

   private

  def user_params
    params.require(:user).permit(:name, :profile_image, :introduction, :option)
  end

  def book_params
    params.require(:book).permit(:title, :body, :option)
  end

end
