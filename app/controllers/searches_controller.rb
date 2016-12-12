class SearchesController < ApplicationController

  def index
    @q = Item.ransack(params[:q])
    @items = @q.result
  end

  def subcategories_collection
    Category.find(params[:id]).subcategories
  end

  def sizes_collection
    Category.find(params[:id]).sizes
  end
end
