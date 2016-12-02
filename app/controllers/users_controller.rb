class UsersController < ApplicationController
  before_action, only: [:show]

  def index
    @users = User.all
  end

  def show
    @user = User.find(params[:id])
  end

  def edit
  end

  def find
    @user = User.find(params[:id or :name])
  end

end
