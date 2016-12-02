class ItemColorsController < ApplicationController
  def index
    @item_colors = ItemColor.all
  end

  def show
    @item_color = ItemColor.find(params[:id])
  end
end
