class SizesController < ApplicationController

  def index
    @sizes = Size.all
  end

  def show
    @size = Size.find(params[:id])
  end

end
