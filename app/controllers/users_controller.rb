class UsersController < ApplicationController
  before_action, only: [:show]

  def index
    @users = User.all
  end

  def show
  end

  def edit
  end

  def find
  end

  private

  def set_user
    @user = User.find(params[:id])
  end
end
