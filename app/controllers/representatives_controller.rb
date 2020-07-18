class RepresentativesController < ApplicationController

  def index
    @representatives = Member.where(chamber: 'house')
                             .order(last_name: :asc)
                             .paginate(page: params[:page], per_page: 20)
  end

  def show
    @representative = Member.find_by_member_id(params[:id])
  end

end