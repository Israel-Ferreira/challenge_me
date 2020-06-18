class Api::V1::UsersController < ApplicationController
  before_action :set_user, only: [:set_user]

  def update 
    if @user.update(user_params)
      head :ok 
    else
      head :unprocessable_entity
    end
  end

  private 

  def user_params
    params.require(:user).permit(:avatar)
  end

  def set_user 
    @user = User.find(params[:id])
  end
end
