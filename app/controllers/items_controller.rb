class ItemsController < ApplicationController



def index

  if params[:search]
    @items = Item.search(params[:search]).order("created_at DESC")
  else
    @items = Item.all.order("created_at DESC")
  end

  #this is filter for price
  @items.to_a.select!{ |item| (item.price > params[:min_price].to_f) && (item.price < params[:max_price].to_f) }

end


def show
  @item = Item.find(params[:id])
end

end
