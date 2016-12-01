class SubcategoriesController < ApplicationController
  before_action, only: [:show]

  def index
    @subcategories = Subcategory.all
  end

  def show
  end

  private

  def set_subcategory
    @subcategory = Subcategory.find(params[:id])
  end

end
