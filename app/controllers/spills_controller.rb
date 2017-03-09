class SpillsController < ApplicationController
  def index
    @spills = Spill.all
  end 

  def show
    spill_id = params[:id]
    @spill = Spill.find_by(id: spill_id)
    render 'show.html.erb'
  end
end
