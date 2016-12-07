class ItemLikesController < ApplicationController
  before_action :authenticate_user!
  def create
    ItemLike.where(user_id: current_user.id, item_id: params[:item_id]).first_or_create!
    redirect_to :back
  end

  def destroy
    @item_like = ItemLike.find(params[:id])
    if @item_like
      @item_like.destroy
      redirect_to :back
    end
  end

end
