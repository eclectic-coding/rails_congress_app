class SenatorsController < ApplicationController
  def index
    @senators = Member.where(chamber: 'senate')
  end

  def show
  end
end
