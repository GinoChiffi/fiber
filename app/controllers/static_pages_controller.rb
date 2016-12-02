class StaticPagesController < ApplicationController
  #before_action :authenticate_user!, only: [:landing]

  def landing
    if current_user
      redirect_to home_path
    end
  end

  def home

  if params[:search]
    @items = Item.search(params[:search]).order("created_at DESC")
  else
    @items = Item.all.order("created_at DESC")
  end

  end
end
