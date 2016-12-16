class SearchesController < ApplicationController
  def index
    @q = Item.ransack(params[:q])
    @items = @q.result
  end
end
