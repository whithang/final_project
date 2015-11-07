class ReviewsController < ApplicationController

	def index
		@title = 'MyReviews'
	    if session[:user_id]
	      @current_user = User.find(session["user_id"])
	      @my_reviews = Review.where(user_id: @current_user.id).order('id DESC').paginate(:page => params[:page], :per_page => 10)
	    end
	    @city = ''
	    for j in Winery.all.map(&:city).uniq
	      @city = @city + j + ','
	    end
	    for j in Winery.all.map(&:zip).uniq
	      @city = @city + j.to_s + ','
	    end
	end

	def create
		puts "-----------"
	    photo_name = ''
	    if params[:photo]
	      name = params[:photo].original_filename
	      photo_name = "review_photos/"+params[:photo].original_filename
	      directory = "app/assets/images/review_photos/"
	      if !File.exist? directory         # create folder if it is not exist
	        require 'fileutils'
	        FileUtils.mkpath directory
	      end
	      path = File.join(directory, name)
	      File.open(path, "wb") { |f| f.write(params[:photo].read) }
	    end
	    review = Review.create(user_id: session["user_id"] , winery_id: params[:winery_id] , comment: params[:comment] ,rating: params[:rating],photo: photo_name) 
	    redirect_to "/wineries/show/"+params[:winery_id]
	end

	def show
		@title = 'MyReviews'
	    if session[:user_id]
	      @current_user = User.find(session["user_id"])
	    end
	    @winery = Winery.find_by_slug(params[:winery_slug])
	    @city = ''
	    for j in Winery.all.map(&:city).uniq
	      @city = @city + j + ','
	    end
	    for j in Winery.all.map(&:zip).uniq
	      @city = @city + j.to_s + ','
	    end
	    winery_id = Winery.find_by_slug(params[:winery_slug])
		@all_reviews = Review.where(winery_id: winery_id).order('id DESC').paginate(:page => params[:page], :per_page => 10)
		
	end

end
