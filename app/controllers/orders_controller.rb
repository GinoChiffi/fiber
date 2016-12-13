class OrdersController < ApplicationController


  def create
    @order = Order.new
  end

  def destroy
    @order.destroy
    redirect_to #order_page_path
  end

end
