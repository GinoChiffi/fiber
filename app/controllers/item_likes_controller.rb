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
  end

end
