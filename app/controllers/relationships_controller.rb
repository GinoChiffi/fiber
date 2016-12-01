class RelationshipsController < ApplicationController
  before_action, only: [:show]

  def index
    @relationships = Relationship.all
  end

  def show
  end

  def create
    @relationship = Relationship.new()
    #follow someone, which parameters to use
  end

  def destroy
    @relationships.destroy
    redirect_to #profile_path
  end

  def find
  end

  private

  def set_relationship
    @relationship = Relationship.find(params[:id])
  end


end
