class SenatorsController < ApplicationController
  def index
    @senators = Member.where(chamber: 'senate').paginate(page: params[:page],
                                                         per_page: 20)
  end

  def show
  end
end
