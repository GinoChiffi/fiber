class SizesController < ApplicationController
  before_action, only: [:show]

  def index
    @sizes = Size.all
  end

  def show
  end

  def find
  end

  private

  def set_size
    @size = Size.find(params[:id])
  end


end
