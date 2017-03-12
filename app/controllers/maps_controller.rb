class MapsController < ApplicationController

  def json_index
    spills = Spill.all
    spills_since_2000 = spills.select { |spill| spill.date_incident.year >= 2000 }
    spills_since_2000_bakken_counties = []

    spills_since_2000.each do |spill|
      if spill.county == "McKenzie"
        spills_since_2000_bakken_counties << spill
      elsif spill.county == "Divide"
        spills_since_2000_bakken_counties << spill
      elsif spill.county == "Burke"
        spills_since_2000_bakken_counties << spill
      elsif spill.county == "Williams"
        spills_since_2000_bakken_counties << spill
      elsif spill.county == "Dunn"
        spills_since_2000_bakken_counties << spill
      elsif spill.county == "Billings"
        spills_since_2000_bakken_counties << spill
      elsif spill.county == "Golden Valley"
        spills_since_2000_bakken_counties << spill
      elsif spill.county == "Mountrail"
        spills_since_2000_bakken_counties << spill
      elsif spill.county == "Stark"
        spills_since_2000_bakken_counties << spill
      elsif spill.county == "Mercer"
        spills_since_2000_bakken_counties << spill
      elsif spill.county == "McLean"
        spills_since_2000_bakken_counties << spill
      elsif spill.county == "Ward"
        spills_since_2000_bakken_counties << spill
      elsif spill.county == "Renville"
        spills_since_2000_bakken_counties << spill
      elsif spill.county == "Slope"
        spills_since_2000_bakken_counties << spill
      elsif spill.county == "Hettinger"
        spills_since_2000_bakken_counties << spill
      end
    end
    
    render json: spills_since_2000_bakken_counties.to_json


    # @spills_bakken_counties = Spill.where(County: "McKenzie")
    # .or(Spill.where(County: "Divide")
    #   .or(Spill.where(County: "Burke")
    #     .or(Spill.where(County: "Williams")
    #       .or(Spill.where(County: "Dunn")
    #         .or(Spill.where(County: "Billings")
    #           .or(Spill.where(County: "Golden Valley")
    #             .or(Spill.where(County: "Mountrail")
    #               .or(Spill.where(County: "Stark")


  end


  def json_sort_by_date

    spills = Spill.all
    spills_since_2000 = spills.select { |spill| spill.date_incident.year >= 2000 }
    spills_since_2000_bakken_counties = []

    spills_since_2000.each do |spill|
      if spill.county == "McKenzie"
        spills_since_2000_bakken_counties << spill
      elsif spill.county == "Divide"
        spills_since_2000_bakken_counties << spill
      elsif spill.county == "Burke"
        spills_since_2000_bakken_counties << spill
      elsif spill.county == "Williams"
        spills_since_2000_bakken_counties << spill
      elsif spill.county == "Dunn"
        spills_since_2000_bakken_counties << spill
      elsif spill.county == "Billings"
        spills_since_2000_bakken_counties << spill
      elsif spill.county == "Golden Valley"
        spills_since_2000_bakken_counties << spill
      elsif spill.county == "Mountrail"
        spills_since_2000_bakken_counties << spill
      elsif spill.county == "Stark"
        spills_since_2000_bakken_counties << spill
      elsif spill.county == "Mercer"
        spills_since_2000_bakken_counties << spill
      elsif spill.county == "McLean"
        spills_since_2000_bakken_counties << spill
      elsif spill.county == "Ward"
        spills_since_2000_bakken_counties << spill
      elsif spill.county == "Renville"
        spills_since_2000_bakken_counties << spill
      elsif spill.county == "Slope"
        spills_since_2000_bakken_counties << spill
      elsif spill.county == "Hettinger"
        spills_since_2000_bakken_counties << spill
      end
    end

  start_date = DateTime.new(params[:start_year].to_i, params[:start_month].to_i)
  end_date = DateTime.new(params[:end_year].to_i, params[:end_month].to_i)
  selected_spills = spills_since_2000_bakken_counties.select { |spill| spill.date_incident >= start_date && spill.date_incident <= end_date }
  render json: spills_since_2000_bakken_counties.to_json
  end

  def json_show
    spill_id = params[:id]
    @spill = Spill.find_by(id: spill_id)
    render json: @spill.to_json
  end

    def json_spills_by_year
    spills = Spill.all
    spills_since_2000 = spills.select { |spill| spill.date_incident.year >= 2000 }
    spills_since_2000_bakken_counties = []

    spills_since_2000.each do |spill|
      if spill.county == "McKenzie"
        spills_since_2000_bakken_counties << spill
      elsif spill.county == "Divide"
        spills_since_2000_bakken_counties << spill
      elsif spill.county == "Burke"
        spills_since_2000_bakken_counties << spill
      elsif spill.county == "Williams"
        spills_since_2000_bakken_counties << spill
      elsif spill.county == "Dunn"
        spills_since_2000_bakken_counties << spill
      elsif spill.county == "Billings"
        spills_since_2000_bakken_counties << spill
      elsif spill.county == "Golden Valley"
        spills_since_2000_bakken_counties << spill
      elsif spill.county == "Mountrail"
        spills_since_2000_bakken_counties << spill
      elsif spill.county == "Stark"
        spills_since_2000_bakken_counties << spill
      elsif spill.county == "Mercer"
        spills_since_2000_bakken_counties << spill
      elsif spill.county == "McLean"
        spills_since_2000_bakken_counties << spill
      elsif spill.county == "Ward"
        spills_since_2000_bakken_counties << spill
      elsif spill.county == "Renville"
        spills_since_2000_bakken_counties << spill
      elsif spill.county == "Slope"
        spills_since_2000_bakken_counties << spill
      elsif spill.county == "Hettinger"
        spills_since_2000_bakken_counties << spill
      end
    end
    
    render json: spills_since_2000_bakken_counties.to_json


    # @spills_bakken_counties = Spill.where(County: "McKenzie")
    # .or(Spill.where(County: "Divide")
    #   .or(Spill.where(County: "Burke")
    #     .or(Spill.where(County: "Williams")
    #       .or(Spill.where(County: "Dunn")
    #         .or(Spill.where(County: "Billings")
    #           .or(Spill.where(County: "Golden Valley")
    #             .or(Spill.where(County: "Mountrail")
    #               .or(Spill.where(County: "Stark")


  end
end
