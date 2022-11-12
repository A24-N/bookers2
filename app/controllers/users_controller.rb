class UsersController < ApplicationController

  def new
  end

  def index
    @users = User.all
  end

  def show
    @user = User.find(params[:id])
    @books = Book.where(user_id: params[:id])
  end

  def edit
  end

  private
  def user_params
    params.require(:user).permit(:name, :introduction)
  end
end
