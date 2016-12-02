class SizesController < ApplicationController
  before_action, only: [:show]

  def index
    @sizes = Size.all
  end

  def show
    @size = Size.find(params[:id])
  end

end
