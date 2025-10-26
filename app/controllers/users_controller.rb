class UsersController < ApplicationController
  before_action :set_user, only: [ :show ]
  before_action :authenticate_user!

  def show
    @movies = @user.movies.order(created_at: :desc)
  end

  private

  def user_params
    params.require(:user).permit(:name, :email, :avatar)
  end

  def set_user
      @user = User.find(params[:id])
  end
end
