class WineriesController < ApplicationController

	def index
		puts "///////////////////"
		@base_search_url = request.original_url
		@title = 'Wineries'
	    if session[:user_id]
	      @current_user = User.find(session["user_id"])
	    end
	    @city = ''
	    for j in Winery.all.map(&:city).uniq
	      @city = @city + j + ','
	    end
	    for j in Winery.all.map(&:zip).uniq
	      @city = @city + j.to_s + ','
	    end
	    @max_fee = (Winery.where.not(fee: nil).order("fee DESC").first).fee
	    @environment = Atmosphere.all
	    @varietals_red = Varietal.where(wine_type_id: WineType.find_by_name('Red').id)
	    @varietals_white = Varietal.where(wine_type_id: WineType.find_by_name('White').id)
	    @varietals_other = Varietal.where('wine_type_id != ? and wine_type_id != ?',WineType.find_by_name('White').id,WineType.find_by_name('Red').id)
	    @wine_type = {}
	    x=0
	    for i in WineType.all
	      data1 ={}
	      data1['type_name'] = i.name
	      data1['varietal'] = []
	      for j in Varietal.where(wine_type_id: i.id)
	        data1['varietal'].push(j.name)
	      end
	      @wine_type[x] = data1
	      x=x+1
	    end
	    
	    if params[:search_data] and params[:search_data] != nil
	      puts "in search_data"
	      puts params[:search_data]
	      @string = params[:search_data]
	      search = @string
	      @data = Winery.where("city LIKE :search OR zip LIKE :search" , :search => "%"+search+"%").order('name').paginate(:page => params[:page], :per_page => 4)
	    elsif params[:letter] and params[:letter] != nil and params[:filter] != 'true'
	      puts "in letter"
	      puts params[:letter]
	      @letter = params[:letter]
	      @data = Winery.where("name LIKE :letter", letter: @letter+"%").paginate(:page => params[:page], :per_page => 4)
	    elsif params[:filter] == 'true'
	      puts "in filter"
	      
	      winery_ids = Winery.select('wineries.id').all.pluck(:id)
	      
	      if params[:text_data] and params[:text_data] != nil and params[:text_data] != ''
	        search = params[:text_data]
	        winery_ids = winery_ids & Winery.select('wineries.id').where("city LIKE :search OR zip LIKE :search OR street LIKE :search OR wineries.name LIKE :search" , :search => "%"+search+"%").pluck(:id)
	      end
	      if params[:picnic] and params[:picnic] != nil
	        winery_ids = winery_ids & Winery.select('wineries.id').where(picnic: true).pluck(:id)
	      end
	      if params[:food] and params[:food] != nil
	        winery_ids = winery_ids & Winery.select('wineries.id').where(food: true).pluck(:id)
	      end
	      if params[:tour] and params[:tour] != nil
	        winery_ids = winery_ids & Winery.select('wineries.id').where(tour: true).pluck(:id)
	      end
	      if params[:public] and params[:public] != nil
	        winery_ids = winery_ids & Winery.select('wineries.id').where(appointment: false).pluck(:id)
	      end
	      if params[:appointment] and params[:appointment] != nil
	        winery_ids = winery_ids & Winery.select('wineries.id').where(appointment: true).pluck(:id)
	      end
	      if params[:open_now] and params[:open_now] != nil
	        time_now = Time.now.strftime("%H:%M")
	        winery_ids = winery_ids & Winery.select('wineries.id').where('strftime("%H:%M",open) <= :time_now and strftime("%H:%M",close) > :time_now', :time_now => time_now ).pluck(:id)
	      end
	      if params[:adults] and params[:adults] != nil
	        winery_ids = winery_ids & Winery.select('wineries.id').where(family: false).pluck(:id)
	      end
	      if params[:family] and params[:family] != nil
	        winery_ids = winery_ids & Winery.select('wineries.id').where(family: true).pluck(:id)
	      end
	      if params[:pets] and params[:pets] != nil
	        winery_ids = winery_ids & Winery.select('wineries.id').where(pets: true).pluck(:id)
	      end
	      if params[:Red] and params[:Red] != nil
	        winery_ids = winery_ids & Winery.joins(varietals: :wine_type).select('wineries.id').where("wine_types.name = :wtnam",:wtnam => 'Red').group('wineries.id').pluck(:id)
	      else
	        for i in Varietal.joins(:wine_type).where("wine_types.name = :type_name", :type_name => 'Red')
	          if params[(i.name).tr(" ","_")] and params[(i.name).tr(" ","_")] != nil
	            winery_ids = winery_ids & Winery.joins(:varietals).select('wineries.id').where("varietals.name = :param", :param => params[(i.name).tr(" ","_")]).group('wineries.id').pluck(:id)
	          end
	        end
	      end

	      if params[:White] and params[:White] != nil
	        winery_ids = winery_ids & Winery.joins(varietals: :wine_type).select('wineries.id').where("wine_types.name = :wtnam",:wtnam => 'White').group('wineries.id').pluck(:id)
	      else
	        for i in Varietal.joins(:wine_type).where("wine_types.name = :type_name", :type_name => 'White')
	          if params[(i.name).tr(" ","_")] and params[(i.name).tr(" ","_")] != nil
	            winery_ids = winery_ids & Winery.joins(:varietals).select('wineries.id').where("varietals.name = :param", :param => params[(i.name).tr(" ","_")]).group('wineries.id').pluck(:id)
	          end
	        end
	      end
		  if params[:tasting_price_range] and params[:tasting_price_range] != nil
		  	range = params[:tasting_price_range].split(',')
	        winery_ids = winery_ids & Winery.select('wineries.id').where("fee >= ? and fee <= ?",(range[0]).to_i,(range[1]).to_i).pluck(:id)
	      end
	      if params[:Rosé] and params[:Rosé] != nil
	        winery_ids = winery_ids & Winery.joins(:varietals).select('wineries.id').where("varietals.name = :param", :param => params[:Rosé]).group('wineries.id').pluck(:id)
	      end
	      if params[:Sparking__Champagne] and params[:Sparking__Champagne] != nil
	        winery_ids = winery_ids & Winery.joins(:varietals).select('wineries.id').where("varietals.name = :param", :param => "Sparking / Champagne").group('wineries.id').pluck(:id)
	      end
	      if params[:star_rating].to_i > 0
	        winery_ids = winery_ids & Winery.joins(:reviews).select("wineries.id").having("avg(reviews.rating) = :star_rating",:star_rating => params[:star_rating].to_i).group('wineries.id').pluck(:id)
	      end
	      if params[:letter] and params[:letter] != nil
	      	@data = Winery.where('id IN (?) and name LIKE ?',winery_ids,params[:letter]+"%").paginate(:page => params[:page], :per_page => 4)
	      else
	      	@data = Winery.where(id: winery_ids).paginate(:page => params[:page], :per_page => 4)
	      end
	    else
	      puts "in all"
	      @data = Winery.all.paginate(:page => params[:page], :per_page => 4)
	    end
	    puts "----------------------"
	    time_now = Time.now.strftime("%H:%M")
	    puts @data
	    if @data.blank?
	      @msg = "nodata"
	    else
	      @winery = []
	      x=0   
	      for i in @data
	        data1={}
	        data1['slug'] = i.slug
	        data1['winery_id'] = i.id
	        data1['name'] = i.name
	        data1['street'] = i.street
	        data1['city'] = i.city
	        data1['state'] = i.state
	        data1['zip'] = i.zip
	        data1['phone'] = i.phone
	        data1['lat'] = i.lat
	        data1['lng'] = i.lng
	        data1['avg_rating'] = (Review.where(winery_id: i.id).average(:rating)).to_i
	        if i.open and i.close
		        if (i.open).strftime("%H:%M") <= time_now and (i.close).strftime("%H:%M") > time_now
		        	data1['open_now'] = true
		        else
		        	data1['open_now'] = false
		        end
		    else
		    	data1['open_now'] = false
	        end
	        begin
	          data1['image'] = (WineryImage.where(winery_id: i.id).first).photo
	        rescue => ex
	          data1['image'] = ''
	        end
	        @winery.push(data1)
	        x=x+1
	      end
	    end
	end

	def show
		begin
			winery_id = Winery.find_by_slug(params[:winery_slug]).id
		rescue Exception => e
			raise ActionController::RoutingError.new('Not Found')
		end
		@user_review = Review.where(user_id: session["user_id"], winery_id: winery_id).order('id DESC').limit(1)
	    @all_review = Review.where(winery_id: winery_id).order('id DESC').limit(4)
	    @all_count = Review.where(winery_id: winery_id).count
	    puts @user_review
	    
	    @winery = Winery.find(winery_id)
	    @avg_rating = (Review.where(winery_id: winery_id).average(:rating))
	    if @avg_rating and @avg_rating > 0
	    	@avg_rating = @avg_rating.round
	    end
	    @winery_photos =[] 
	    if WineryImage.where(winery_id: winery_id)
	      for i in WineryImage.where(winery_id: winery_id)
	        @winery_photos.push(i.photo)
	      end
	    end
	  
	    @title = 'Winery'
	    if session[:user_id]
	      @current_user = User.find(session["user_id"])
	      	begin
		      token = @current_user.authorizations.find_by_provider('facebook').token
		      puts token
		      require "koala"
		      @graph = Koala::Facebook::API.new(token,'2c4ec9afd5d3d821232cacb8cdc3de49')
		      Koala.config.api_version = "v2.0"
		      me = @graph.get_object("me")
		      friends = @graph.get_connections('me', "friends")
		      auth_id = []
		      for i in friends
		      	auth_id.push(i['id'])
		      end
		      user_ids = Authorization.where(uid: auth_id).pluck(:user_id)
		      @friends_review = Review.where(winery_id: winery_id,user_id: user_ids).order('id DESC').limit(3)
		  	rescue Exception => e
	      	  puts "no facebook"
	      	end
	    end
	    @city = ''
	    for j in Winery.all.map(&:city).uniq
	      @city = @city + j + ','
	    end
	    for j in Winery.all.map(&:zip).uniq
	      @city = @city + j.to_s + ','
	    end
	    # @yelp_review = {0 => {} ,1 => {} }
	    # require 'yelp'

	    # client = Yelp::Client.new({ consumer_key: '8LVlN61IW6iMs2E5lYWnkA',
	    #                         consumer_secret: 'ViCvQdVxSk_ZPmX7bSAdtcKqFss',
	    #                         token: '3PXWFDW1Rbv1BJ8nkA_Hme45M4i5P8U9',
	    #                         token_secret: '7o0IXGOyI6tfcAPRg5oMK3a-N84'
	    #                       })

	    # params = { term: @winery.name,
	    #        limit: 3,
	    #        category_filter: 'wineries'
	    #      }

	    # locale = { lang: 'fr' }

	    # for i in Winery.where(phone: nil)
	    #   puts i.name
	    #   puts i.id
	    # end
	    # if not (@winery.phone).blank?
	    #   response = client.phone_search(@winery.phone)
	    #   puts ">>>>>>>>>>>>>>"
	    #   	if not response.businesses.blank?
		   #    puts response.businesses[0].name
		   #    puts response.businesses[0].url
		   #    require 'mechanize'

		   #    mechanize = Mechanize.new

		   #    page = mechanize.get(response.businesses[0].url)
		      
		   #    @yelp_review = {0 => {} ,1 => {} }
		     
		      
		   #    x=0
		   #    page.search('.review-sidebar .user-display-name').each do |tag|
		   #      if x==0
		   #        @yelp_review[0]['name'] = tag.text
		   #      end
		   #      if x==1
		   #        @yelp_review[1]['name'] = tag.text
		   #      end
		   #      x=x+1
		   #    end
		   #    x=0
		   #    page.search('.review-sidebar .photo-box-img').each do |tag|
		   #    	if x==0
		   #        @yelp_review[0]['photo'] = tag.attr('src')
		   #      end
		   #      if x==1
		   #        @yelp_review[1]['photo'] = tag.attr('src')
		   #      end
		   #      x=x+1
		  	#   end
		  	#   x=0
		   #    page.search('.review-wrapper .review-content p').each do |tag|
		   #    	if x==0
		   #        @yelp_review[0]['review'] = tag.text
		   #      end
		   #      if x==1
		   #        @yelp_review[1]['review'] = tag.text
		   #      end
		   #      x=x+1
		   #    end
		   #    x=0
		   #    page.search('.review-wrapper .review-content .rating-very-large meta').each do |tag|
		   #    	if x==0
		   #        @yelp_review[0]['rating'] = (tag.attr('content')).to_i
		   #        puts (tag.attr('content')).to_i
		   #      end
		   #      if x==1
		   #        @yelp_review[1]['rating'] = (tag.attr('content')).to_i
		   #        puts (tag.attr('content')).to_i
		   #      end
		   #    	x=x+1
		  	#   end
		  	#   x=0
		  	#   page.search('.review-wrapper .review-content .rating-qualifier meta').each do |tag|
		   #    	if x==0
		   #        @yelp_review[0]['date'] = DateTime.parse(tag.attr('content')).strftime("%b, %d, %Y")
		   #      end
		   #      if x==1
		   #        @yelp_review[1]['date'] = DateTime.parse(tag.attr('content')).strftime("%b, %d, %Y")
		   #      end
		   #    	x=x+1
		  	#   end

		  	# end
	  	  	

	    # end
	end

end
