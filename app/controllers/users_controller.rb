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
    if user_signed_in?
      @user = User.find(current_user.id)
    end
  end

  def update
    if user_signed_in?
      user = User.find(current_user.id)
      user.id = current_user.id
      user.update(user_params)
      flash[:notice] = "ユーザー情報が更新されました。"
      redirect_to mypage_path
    end
  end

  private

  def user_params
    params.require(:user).permit(:name, :phone_number, :postcode, :prefecture, :city, :street, :building)
  end
end






