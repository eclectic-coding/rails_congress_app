class SenateController < ApplicationController

  def index
    @senators = Member.where(chamber: 'senate').paginate(page: params[:page])
  end

  def show
    @senator = Member.find_by_id(params[:id])
  end
end
