class SearchesController < ApplicationController

  def index
    @q = Item.ransack(params[:q])
    @search_items = @q.result
  end
end
