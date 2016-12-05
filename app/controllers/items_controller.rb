class ItemsController < ApplicationController



def index

  if search
  @items = Item.search(params[:params])
  else
  @items = Item.all
  end
end


def show
  @item = Item.find(params[:id])
end

end
