class GraphsController < ApplicationController
  def spills_by_year
    spills = Spill.all

    spills_since = spills.select { |spill| spill.date_incident.year <= 2015 }

    spills_by_year = spills_since.group_by { |spill| spill.date_incident.year }

    spill_count_by_year = spills_by_year.map do |year, spills|
      { year: year.to_s, count: spills.count }
    end

    render json: spill_count_by_year.to_json
  end
end
