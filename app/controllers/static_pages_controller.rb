class StaticPagesController < ApplicationController
  #before_action :authenticate_user!, only: [:landing]

  def landing
    if current_user
      redirect_to home_path
    end
  end

  def home

  end
end
