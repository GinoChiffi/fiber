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

    @items = @items.to_a.select{ |item| (item.price >= params[:min_price].to_f) && (item.price <= params[:max_price].to_f )}

  end
end
