class UsersController < ApplicationController

  def index
    users = User.all
    render json: users
  end


  def show
    user = User.find_by(id: params[:id])
    if user 
      render json: user, include: [:user_ingredients]
    else
      render json: {error: 'User not found.'}, status: 404
    end
  end


  def create 
    newUser = User.new(username: params[:username], email: params[:email], password: params[:password])
    if newUser.save
      render json: newUser
    else
      render json: {error: "User not valid."}, status: 400
    end
  end 


  def signin 
    user = User.find_by(username: params[:username])
    if user && user.authenticate(params[:password])
      render json: { id: user.id, username: user.username, token: issue_token({ id: user.id }) }
    else
      render json: { error: 'Invalid username/password combination' }, status: 401
    end
  end
  

  def validate
    user = current_user
    if user
      render json: { username: user.username, token: issue_token({ id: user.id }) }
    else
      render json: { error: "User not found" }, status: 404
    end
  end
  

  def ingredients
    user = current_user
    if user
      render json: user.ingredients
    else
      render json: { error: "User not found" }, status: 404
    end
  end

  
  private 

  def user_params
    params.require(:user).permit(:username, :email, :password)
  end
  
end

