class OrdersController < ApplicationController

  def index
    @orders = current_user.orders
  end

  def new
    @item_id = params[:item_id]
    @order = Order.new(item_id: @item_id)
    @sizes = Size.joins(:item_sizes)
                 .where(item_sizes: { item_id: @item_id })
                 .map { |s| [s.value.upcase, s.id] }
  end

  def create
    @order = Order.new(order_params.merge(user_id: current_user.id))
    if @order.save
      redirect_to orders_path
    else
      # do that
    end
  end

  def destroy
  Order.find(params[:id]).destroy
    redirect_to orders_path
  end

  private
  def order_params
    params.require(:order).permit(:price, :pick_up_date, :item_id, :size_id)
  end

end
