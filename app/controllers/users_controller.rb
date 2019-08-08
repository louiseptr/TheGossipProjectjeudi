class UsersController < ApplicationController
  def index
  end

  def show
    @user = User.find(params[:id])
  end

  def new
    @user = User.new
  end

  def create
    hash_params = user_params
    if @user.save
    redirect_to contact_path
    else
    render 'new'
  end
end

  private
  def user_params
  params.require(:user).permit(:first_name, :last_name, :description, :email, :age, :city, :password_digest)
  end



end
