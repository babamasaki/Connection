class UsersController < ApplicationController
  def top
  end

  def mypage
    if user_signed_in?
      @user = User.find(current_user.id)
    end
  end

  def show
  end

  def edit
  end

  def update
  end

  private

  def user_params
    params.require(:user).permit(:name, :phone_number, :postcode, :prefecture, :city, :street, :building)
  end
end






