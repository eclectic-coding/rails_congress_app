class FollowListsController < ApplicationController
  before_action :logged_in?

  def index
    @user_list = FollowList.where(user_id: current_user[:id])
  end

  def edit
    @member = Member.find_by(params[:member_id])
    @follow_list = FollowList.find_by_member_id(params[:id])

    if @follow_list.nil?
      @follow_list = FollowList.new do |m|
        m.user_id = current_user['id']
        m.member_id = @member['id']
        m.mem_id = @member['member_id']
        m.full_name = @member['full_name']
        m.chamber = @member['chamber']
        m.state = @member['state']
        m.party = @member['party']
      end
      @follow_list.save!
      flash[:success] = 'Your selection has been added to your Follow List.'
    else
      flash[:danger] = 'Sorry, it did not work'
    end
  end

  def create

  end

  def update

  end

  def destroy

  end

end
