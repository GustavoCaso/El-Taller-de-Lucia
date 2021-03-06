class UsersController < ApplicationController

  before_action :require_login
  before_action :set_user, only:[:show,:edit, :update, :destroy]

  def index
    @users = User.all
  end


  def new
    @user = User.new
  end

  def create
    @user = User.new(user_params)
    if @user.save
      redirect_to users_path, notice: "Usuario creado correctamente"
    else
      render :new
    end
  end

  def edit

  end

  def update
    if @user.update(user_params)
      redirect_to users_path, notice: "Usuario modificado"
    else
      render :edit
    end
  end

  def destroy
    @user.delete
    redirect_to users_path, notice: "Usuario borrado correctamente"
  end

private
  def user_params
    params.require(:user).permit(:email, :password)
  end

  def set_user
    @user = User.find(params[:id])
  end
end
