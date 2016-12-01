class ItemLikesController < ApplicationController
  def create
    @item_like = ItemLike.new
    if @item_like.save

  end

  def destroy
  end

end
