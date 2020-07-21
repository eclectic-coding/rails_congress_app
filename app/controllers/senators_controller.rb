class SenatorsController < ApplicationController


  def index
    @senators = Member.where(chamber: 'senate')
                      .order(last_name: :asc)
                      .paginate(page: params[:page], per_page: 20)
  end

  def show
    @senator = Member.find_by(params[member_id: :id])
  end

end
