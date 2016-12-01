class ItemSubcategoriesController < ApplicationController
  def index
    @item_subcategories = ItemSubcategory.all
  end

  def show
    @item_subcategory = ItemSubcategory.find(params[:id])
  end

end
