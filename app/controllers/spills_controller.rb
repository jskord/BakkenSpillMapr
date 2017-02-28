class SpillsController < ApplicationController
  def index
    @spills = Spill.all
  end 
end
