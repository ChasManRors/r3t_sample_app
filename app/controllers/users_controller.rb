class UsersController < ApplicationController
  def new
    @user = User.new
  end

  def show
    @user = User.find(params[:id])
  end

  def create
    @user = User.new(params[:user])
    if @user.save
      flash[:success] = 'Well Done!'
      redirect_to @user
      #render 'show'
    else
      render 'new'
    end
  end

end
