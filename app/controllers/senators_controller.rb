class SenatorsController < ApplicationController

  def index
    @senators = Senate.paginate(page: params[:page], per_page: 20)
  end

  def show
    @senator = Senate.find_by_member_id(params[:id])
  end

end
