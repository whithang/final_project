class ProfilesController < ApplicationController

	def edit
	    @title = 'Profile'
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
	end

	def update
		@current_user = User.find(session["user_id"])
		profile = @current_user.profile
		profile.birth_date = params[:birth_date]
		profile.street = params[:street]
		profile.city = params[:city]
		profile.state = params[:state]
		profile.zip = params[:zip]
		profile.bio = params[:bio]
		profile.save	
		redirect_to "/profiles/edit"
	end

end

