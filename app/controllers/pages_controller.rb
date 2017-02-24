class PagesController < ApplicationController
  def index
    render 'index.html.erb'
  end
  def signup
    render 'signup.html.erb'
  end
  def map
    render 'map.html.erb'
  end
end
