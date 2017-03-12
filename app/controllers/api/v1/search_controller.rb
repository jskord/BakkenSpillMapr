class Api::V1::SearchController < ApplicationController
  def index
    spills = Spill.all
    spills_bakken_counties = []
    spills.each do |spill|
      if spill.county == "McKenzie"
        spills_bakken_counties << spill
      elsif spill.county == "Divide"
        spills_bakken_counties << spill
      elsif spill.county == "Burke"
        spills_bakken_counties << spill
      elsif spill.county == "Williams"
        spills_bakken_counties << spill
      elsif spill.county == "Dunn"
        spills_bakken_counties << spill
      elsif spill.county == "Billings"
        spills_bakken_counties << spill
      elsif spill.county == "Golden Valley"
        spills_bakken_counties << spill
      elsif spill.county == "Mountrail"
        spills_bakken_counties << spill
      elsif spill.county == "Stark"
        spills_bakken_counties << spill
      elsif spill.county == "Mercer"
        spills_bakken_counties << spill
      elsif spill.county == "McLean"
        spills_bakken_counties << spill
      elsif spill.county == "Ward"
        spills_bakken_counties << spill
      elsif spill.county == "Renville"
        spills_bakken_counties << spill
      elsif spill.county == "Slope"
        spills_bakken_counties << spill
      elsif spill.county == "Hettinger"
        spills_bakken_counties << spill
      end
    end
    start_date = DateTime.new(params[:start_year].to_i, params[:start_month].to_i)
    end_date = DateTime.new(params[:end_year].to_i, params[:end_month].to_i)
    selected_spills = spills_bakken_counties.select { |spill| spill.date_incident >= start_date && spill.date_incident <= end_date }
    render json: selected_spills.to_json
  end
end

  # start_date = DateTime.new(params[:start_year].to_i, params[:start_month].to_i)
  # end_date = DateTime.new(params[:end_year].to_i, params[:end_month].to_i)
  # selected_spills = spills_since_2000_bakken_counties.select { |spill| spill.date_incident >= start_date && spill.date_incident <= end_date }
  # render json: selected_spills.to_json
  # def index
  #   if params[:type] == 'physician'
  #     rows = Physician.where(hash_params)
  #     if !params[:limit].nil?
  #       rows = rows.limit(params[:limit].to_i)
  #     end
  #     if !params[:fields].nil?
  #       fields_array = []
  #       params[:fields].split(',').each do |attr|
  #         fields_array.push(attr.to_sym)
  #       end
  #       # bug - id is returned even if ommitted
  #       render json: rows, fields: { physician: fields_array }, each_serializer: Api::V1::PhysicianSerializer, adapter: :json_api, root: false
  #     else
  #       render json: rows, each_serializer: Api::V1::PhysicianSerializer, adapter: :json_api, root: false
  #     end

  #   elsif params[:type] == 'family'
  #     rows = Family.where(hash_params)
  #     if !params[:limit].nil?
  #       rows = rows.limit(params[:limit].to_i)
  #     end
  #     if !params[:fields].nil?
  #       fields_array = []
  #       params[:fields].split(',').each do |attr|
  #         fields_array.push(attr.to_sym)
  #       end
  #       render json: rows, fields: { family: fields_array }, each_serializer: Api::V1::FamilySerializer, adapter: :json_api, root: false
  #     else
  #       render json: rows, each_serializer: Api::V1::FamilySerializer, adapter: :json_api, root: false
  #     end
  #   else
  #     render json: { status: 404, error: "Not found"}, status: 404
  #   end
  # end

  # private

  # def hash_params
  #   h = {}
  #   if !params[:state].nil?
  #     h[:state] = params[:state]
  #   end
  #   if !params[:city].nil?
  #     h[:city] = params[:city]
  #   end
  #   if !params[:last_name].nil?
  #     h[:last_name] = params[:last_name]
  #   end

  #   if params[:type] == 'physician'
  #     if !params[:speciality].nil?
  #       h[:speciality] = params[:speciality]
  #     end
  #   end
  #   h
  # end
