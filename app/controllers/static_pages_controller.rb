class StaticPagesController < ApplicationController
  #before_action :authenticate_user!, only: [:landing]

  def landing
    if current_user
      redirect_to home_path
    end
  end

  def home
    if params[:search]
      @search = Search.find(params[:search])
    else
      @items = Item.all
    end
  end



  def profile

  end

  def settings
  end

end
