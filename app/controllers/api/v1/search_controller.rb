class Api::V1::SearchController < ApplicationController
  def index
    rows = Spill.all
    if !params[:contaminant].nil?
      rows = Spill.where(contaminant: params[:contaminant])
    end
    if !params[:county].nil?
      rows = Spill.where(county: params[:county])
    end
    if !params[:start_date].nil? && !params[:end_date].nil?
      start_date = DateTime.new(params[:start_date].to_i)
      end_date = DateTime.new(params[:end_date].to_i)
      rows = Spill.where("date_incident > ? AND date_incident < ?", start_date, end_date)
    end
    @spills = rows
    render 'spills.json.jbuilder'
  end
end

