module UsersHelper

  def user_account_progress(current_user)
    @nilfieldcount = 0
    if @user.shoe_size.nil?
      @nilfieldcount += 1
    elsif @user.top_size.nil?
      @nilfieldcount += 1
    else
      @user.top_size.nil?
      @nilfieldcount += 1
    end
    @progress = (11 - @nilfieldcount)/11*100
  end

end
