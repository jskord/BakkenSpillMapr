# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

require 'csv'

csv_text = File.read(Rails.root.join('lib', 'seeds', 'spills.csv'))
csv = CSV.parse(csv_text, :headers => true, :encoding => 'ISO-8859-1')
csv.each do |row_data|
  s = Spill.new
  s.incident_url = row_data["incident_url"]
  raw_date_reported = row_data["date_reported"].split('/')
  s.date_reported = "#{raw_date_reported[1]}/#{raw_date_reported[0]}/#{raw_date_reported[2]}"
  raw_date_incident = row_data["date_incident"].split('/')
  s.date_incident = "#{raw_date_incident[1]}/#{raw_date_incident[0]}/#{raw_date_incident[2]}"
  s.county = row_data["county"]
  s.latitude = row_data["latitude"]
  s.longitude = row_data["longitude"]
  s.contaminant = row_data["contaminant"]
  s.volume = row_data["volume"]
  s.units = row_data["units"]
  s.contained = row_data["contained"]
  s.save
end

puts "There are now #{Spill.count} rows in the transactions table"






# require 'rubygems'
# require 'nokogiri'
# require 'open-uri'
# require 'selenium-webdriver'

# def get_data(browser)
#   doc = Nokogiri::HTML(browser.page_source)
#   keys = doc.css("table#GridView1 th").map { |item| item.text }
#   data = []
#   doc.css("table#GridView1 tr").each do |row|
#     row_data = {}
#     row.css("td").each_with_index do |item, index|
#       row_data[keys[index]] = item.text.strip
#     end
#     if row_data != {}
#       s = Spill.new
#       s.incident_url = row_data["Incident ID"]
#       raw_date_reported = row_data["Date Reported"].split('/')
#       s.date_reported = "#{raw_date_reported[1]}/#{raw_date_reported[0]}/#{raw_date_reported[2]}"
#       raw_date_incident = row_data["Date Incident6"].split('/')
#       s.date_incident = "#{raw_date_incident[1]}/#{raw_date_incident[0]}/#{raw_date_incident[2]}"
#       s.county = row_data["County"]
#       s.latitude = row_data["Latitude"]
#       s.longitude = row_data["Longitude"]
#       s.contaminant = row_data["Contaminant"]
#       s.volume = row_data["Volume"]
#       s.units = row_data["Units"]
#       s.contained = row_data["Contained"]
#       s.save
#     end
#   end
#   data
# end

# url = 'http://www.ndhealth.gov/ehs/foia/spills/defaultArc.aspx'

# puts "Creating phantom browswer..."
# browser = Selenium::WebDriver.for :phantomjs
# puts "Opening url..."
# browser.get url

# puts "Reading data page 1"
# data = get_data(browser)
# 150.times do |index|
#   puts "Reading data page #{index + 2}"
#   browser.find_element(css: 'input[value="Next"]').click
#   data += get_data(browser)
# end

# url = 'http://www.ndhealth.gov/ehs/foia/spills/'

# puts "Creating phantom browswer..."
# browser = Selenium::WebDriver.for :phantomjs
# puts "Opening url..."
# browser.get url

# puts "Reading data page 1"
# data = get_data(browser)
# 19.times do |index|
#   puts "Reading data page #{index + 2}"
#   browser.find_element(css: 'input[value="Next"]').click
#   data += get_data(browser)
# end

# browser.close

# puts "finished!"


