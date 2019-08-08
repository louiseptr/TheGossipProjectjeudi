class SessionsController < ApplicationController


def new
  @user = User.find_by(email:params[:email])
end

def create

  user = User.find_by(email: params[:email])
  puts user
  puts user.email
  puts user.first_name
  puts user.last_name
  puts params [:password]
  puts user.password_digest
  puts user.authenticate(params:[:password])
    if user && user.authenticate(params[:password])
      session[:user_id] = user.id
      flash.now[:success] = 'Vous êtes login'
      redirect_to gossips_path
    else
      flash.now[:danger] = 'Invalid email/password combination'
      render 'new'
    end
end

def edit
end

def update
end

def destroy
  session.delete(:user_id)
end

end