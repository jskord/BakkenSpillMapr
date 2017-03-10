class PagesController < ApplicationController
  def index
    render 'index.html.erb'
  end
  def signup
    render 'signup.html.erb'
  end
  def map
    @spills = Spill.all
    render 'map.html.erb'
  end
end
