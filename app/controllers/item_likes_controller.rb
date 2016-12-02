class ItemLikesController < ApplicationController
  def create
    if user_signed_in?

      ItemLike.where(user_id: current_user.id, item_id: params[:item_id]).first_or_create!
      redirect_to :back, notice: 'You liked the item!'
    else
      redirect_to :back, alert: 'You need to be logged in to like an item!'
    end

  end

  def destroy

    if user_signed_in?
      @item_like = ItemLike.where(user_id: current_user.id, item_id: params[:item_id]).first
      if @item_like.present?
        @item_like.destroy
        redirect_to :back, notice: 'You unliked item!'
      else
        redirect_to :back, alert: 'You have no liked item!'
      end
    else
      redirect_to :back, alert: 'You need to be logged in to like item!'
    end
  end

end
