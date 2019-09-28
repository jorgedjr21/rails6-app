class UsersController < ApplicationController
  def create

    user = User.new(user_params)
    if user.save
      render json: { message: 'User saved!'}, status: :ok
    else
      render json: {}, status: :bad_request
    end
  end


  private

  def user_params
    params.require(:user).permit(:name, :email)
  end
end
