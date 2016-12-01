class ItemSizesController < ApplicationController
  def index
    @item_sizes = ItemSize.all
  end

  def show
    @item_size = ItemSize.find(params[:id])
  end

end
