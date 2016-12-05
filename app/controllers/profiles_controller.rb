class ProfilesController < ApplicationController


def show

end

def follow
  @target_user = User.find(params[:id])
  Relationship.create(following: current_user, follower: @target_user)
end

def unfollow
  @target_user = User.find(params[:id])
  Relationship.destroy(following: current_user, follower: @target_user)
end


end
