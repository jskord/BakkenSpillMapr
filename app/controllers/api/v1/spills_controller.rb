class Api::V1::SpillsController < ApplicationController
  def index
    rows = Spill.where(hash_params)
    @families = rows
    render 'spills.json.jbuilder'
  end

  def hash_params
    h = {}
    if !params[:contaminant].nil?
      h[:contaminant] = params[:contaminant]
    end
    if !params[:county].nil?
      h[:county] = params[:county]
    end
    if !params[:start_year].nil? && !params[:end_year].nil?
      h[:date_incident] > params[:start_year] && h[:date_incident] < params[:end_year]
    end
    h
  end
end
