class MembersController < ApplicationController
  def index
    @members = Member.all
    @representatives = Member.where(chamber: 'house')
    @senators = Member.where(chamber: 'senate')
  end

  def show
    @member = Member.find_by_id(params[:id])
  end
end
