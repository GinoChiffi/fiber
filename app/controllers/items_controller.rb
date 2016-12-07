class ItemsController < ApplicationController



def index
  @q = Item.ransack(params[:q])
  @search_items = @q.result(distinct: true)
end


def show
  @item = Item.find(params[:id])
end

end
