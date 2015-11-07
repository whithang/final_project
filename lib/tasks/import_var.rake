require 'csv'
require 'open-uri'
require 'geokit'
include Geokit::Geocoders



desc "Import wineries_varietals from csv file"
task :import => [:environment] do

	file = "wineries_varietals.csv"
	x=1
	CSV.foreach(file, :headers => true) do |row|
		puts row
   		x= x+1
  	end
  
end