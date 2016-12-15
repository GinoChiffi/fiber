class ItemLikesController < ApplicationController

  def create

    @item_like = ItemLike.where(user_id: current_user.id, item_id: params[:item_id]).first_or_create!
    respond_to do |format|
      format.js
    end
  end

  def destroy
    @item_like = ItemLike.find(params[:id])
    if @item_like
      @item_like.destroy
      respond_to do |format|
        format.js
      end
    end
  end

end
