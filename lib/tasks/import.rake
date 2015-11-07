require 'csv'
require 'open-uri'
require 'geokit'
include Geokit::Geocoders



# desc "Import wineries_data from csv file"
# task :import => [:environment] do

# 	file = "wineries_data.csv"
# 	x=1
# 	CSV.foreach(file, :headers => true) do |row|
		
		

# 	    if  row['Appointment'] == 'Yes'
# 	    	row['Appointment'] = true
# 	    else
# 	    	row['Appointment'] = false
# 	    end

# 	    if  row['Pets'] == 'Yes'
# 	    	row['Pets'] = true
# 	    else
# 	    	row['Pets'] = false
# 	    end

# 	    if  row['Picnic'] == 'Yes'
# 	    	row['Picnic'] = true
# 	    else
# 	    	row['Picnic'] = false
# 	    end

# 	    if  row['Food'] == 'Yes'
# 	    	row['Food'] = true
# 	    else
# 	    	row['Food'] = false
# 	    end

# 	    if  row['Tour'] == 'Yes'
# 	    	row['Tour'] = true
# 	    else
# 	    	row['Tour'] = false
# 	    end

# 	    if  row['Family'] == 'Yes'
# 	    	row['Family'] = true
# 	    else
# 	    	row['Family'] = false
# 	    end
	 			
# 		if row['logo'] and row['logo'] != ''
# 			LOCATION = 'app/assets/images/logo/'
# 			if !File.exist? LOCATION         # create folder if it is not exist
# 			    require 'fileutils'
# 			    FileUtils.mkpath LOCATION
# 			end

			
# 			if row['logo'].include? "png"
# 				filename = LOCATION+'logo_'+(x).to_s+'.png'
# 				if FileTest.exist?(filename)
# 					puts 'yes'
# 					row['logo'] = 'logo/logo_'+(x).to_s+'.png'
# 				else
# 					begin
# 						open(filename, 'wb') do |file|
# 						  file << open(row['logo']).read
# 						end
# 						row['logo'] = 'logo/logo_'+(x).to_s+'.png'
						
# 					rescue => ex
# 					  puts "error"
# 					  row['logo'] = ''
# 					end
# 				end

				
# 			elsif (row['logo'].include? "jpg") || (row['logo'].include? "JPG")
# 				filename = LOCATION+'logo_'+(x).to_s+'.jpg'
# 				if FileTest.exist?(filename)
# 					puts 'yes'
# 					row['logo'] = 'logo/logo_'+(x).to_s+'.jpg'
# 				else
# 					begin
# 						open(filename, 'wb') do |file|
# 						  file << open(row['logo']).read
# 						end
# 						row['logo'] = 'logo/logo_'+(x).to_s+'.jpg'
						
# 					rescue => ex
# 					  puts "error"
# 					  row['logo'] = ''
# 					end
# 				end

# 			elsif row['logo'].include? "jpeg"
# 				filename = LOCATION+'logo_'+(x).to_s+'.jpeg'
# 				if FileTest.exist?(filename)
# 					puts 'yes'
# 					row['logo'] = 'logo/logo_'+(x).to_s+'.jpeg'
# 				else
# 					begin
# 						open(filename, 'wb') do |file|
# 						  file << open(row['logo']).read
# 						end
# 						row['logo'] = 'logo/logo_'+(x).to_s+'.jpeg'
						
# 					rescue => ex
# 					  puts "error"
# 					  row['logo'] = ''
# 					end
# 				end

# 			else 
# 				row['logo'] = ''
			
# 			end
			
# 		end

# 		if row['Photo'] and row['Photo'] != ''
# 			LOCATION = 'app/assets/images/winery_photos/'
# 			if !File.exist? LOCATION         # create folder if it is not exist
# 			    require 'fileutils'
# 			    FileUtils.mkpath LOCATION
# 			end

			
# 			if row['Photo'].include? "png"
# 				filename = LOCATION+'winery_'+(x).to_s+'.png'
# 				if FileTest.exist?(filename)
# 					puts 'yes'
# 					row['Photo'] = 'winery_photos/winery_'+(x).to_s+'.png'
# 				else
# 					begin
# 						open(filename, 'wb') do |file|
# 						  file << open(row['Photo']).read
# 						end
# 						row['Photo'] = 'winery_photos/winery_'+(x).to_s+'.png'
						
# 					rescue => ex
# 					  puts "error"
# 					  row['Photo'] = ''
# 					end
# 				end
			

				
# 			elsif (row['Photo'].include? "jpg") || (row['Photo'].include? "JPG")
# 				filename = LOCATION+'winery_'+(x).to_s+'.jpg'
# 				if FileTest.exist?(filename)
# 					puts 'yes'
# 					row['Photo'] = 'winery_photos/winery_'+(x).to_s+'.jpg'
# 				else
# 					begin
# 						open(filename, 'wb') do |file|
# 						  file << open(row['Photo']).read
# 						end
# 						row['Photo'] = 'winery_photos/winery_'+(x).to_s+'.jpg'
						 
# 					rescue => ex
# 					  puts "error"
# 					  row['Photo'] = ''
# 					end
# 				end
			

# 			elsif row['Photo'].include? "jpeg"
# 				filename = LOCATION+'winery_'+(x).to_s+'.jpeg'
# 				if FileTest.exist?(filename)
# 					puts 'yes'
# 					row['Photo'] = 'winery_photos/winery_'+(x).to_s+'.jpeg'
# 				else
# 					begin
# 						open(filename, 'wb') do |file|
# 						  file << open(row['Photo']).read
# 						end
# 						row['Photo'] = 'winery_photos/winery_'+(x).to_s+'.jpeg'
						
# 					rescue => ex
# 					  puts "error"
# 					  row['Photo'] = ''
# 					end
# 				end

# 			else 
# 				row['Photo'] = ''
			
# 			end
			
# 		end  

# 		winery = Winery.create(name:row['Name'],bio:row['Bio'],street:row['Street'],city:row['City'],state:row['State'],zip:row['Zip'],phone:row['Phone'],email:row['Email'],fee:row['Fee'],open:row['Open'],close:row['Close'],website:row['Website'],appointment_url:row['Appointment_url'],club:row['club'],facebook:row['facebook'],twitter:row['twitter'],instagram:row['instagram'],pinterest:row['pinterest'],appointment:row['Appointment'],pets:row['Pets'],picnic:row['Picnic'],food:row['Food'],tour:row['Tour'],family:row['Family'],logo:row['logo'])
# 		if row['Photo'] and row['Photo'] != ''
# 			Winery_Image.create(winery_id: winery.id , photo: row['Photo'])
# 		end
# 		if not winery.lat or winery.lat == nil
# 			puts (winery.id).to_s+" "+winery.street+" "+winery.city
# 			coords = MultiGeocoder.geocode(winery.street+" "+winery.city)
# 			winery.lat = coords.lat
# 			winery.lng = coords.lng
# 			winery.save
# 			puts (winery.id).to_s+" "+winery.street+" "+winery.city+" "+(coords.lat).to_s+" "+(coords.lng).to_s
# 		end
#    		x= x+1
#   	end
  
# end

# desc "Import wineries_varietals from csv file"
# task :import => [:environment] do

# 	file = "wineries_varietals.csv"
# 	x=1
	
# 	varietals = []
# 	for i in Varietal.all
# 		varietals.push(i.name)
# 	end
	
#   	CSV.foreach(file, :headers => true) do |row|
# 		winery_id = Winery.find_by_name(row['Winery']).id
		
# 		for j in varietals
# 			if row[j]=='Yes'
# 				varietal_id = Varietal.find_by_name(j).id
# 				varietals_winery = VarietalsWinery.create(winery_id: winery_id,varietal_id: varietal_id)
# 				puts varietals_winery
# 			end
# 		end 
		
#    		x= x+1
#   	end
  	
# end
