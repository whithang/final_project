class SessionsController < ApplicationController
  def new
  end

  def create
  	auth_hash = request.env['omniauth.auth']
    if auth_hash["provider"] == 'facebook'
      puts "in facebook"
      photo = auth_hash['info']['image']
    	email = auth_hash['info']['email']
    	name = auth_hash['info']['name'].split(' ')
    	first_name = name[0]
    	last_name = name[1]
      puts photo
      puts email
      puts first_name
      puts last_name
      puts auth_hash
    elsif auth_hash["provider"] == 'linkedin'
      puts "in linkedin"
      photo = auth_hash['info']['image']
      email = auth_hash['info']['email']
      first_name = auth_hash['info']['first_name']
      last_name = auth_hash['info']['last_name']
      puts photo
      puts email
      puts first_name
      puts last_name
      puts auth_hash['credentials']['token']
    elsif auth_hash["provider"] == 'google_oauth2'
      puts "in google_oauth2"
      photo = auth_hash['info']['image']
      email = auth_hash['info']['email']
      first_name = auth_hash['info']['first_name']
      last_name = auth_hash['info']['last_name']
      puts photo
      puts email
      puts first_name
      puts last_name
      puts auth_hash['credentials']['token']
    end
      
    exist_user_email = User.find_by_email(email)
    @authorization = Authorization.find_by_provider_and_uid(auth_hash["provider"], auth_hash["uid"])
    if session[:user_id]
    	puts "in if"
    	user = User.find(session[:user_id])
    	unless Authorization.find_by_provider_and_uid(auth_hash["provider"], auth_hash["uid"])
    		Authorization.create :user_id => user.id, :provider => auth_hash["provider"], :uid => auth_hash["uid"] , :token => auth_hash['credentials']['token']
    	end
      redirect_to session[:previous_url]
    elsif @authorization
    	puts "in elsif"
    	session[:user_id] = @authorization.user_id
      redirect_to session[:previous_url]
    elsif exist_user_email
      user = exist_user_email
      unless Authorization.find_by_provider_and_uid(auth_hash["provider"], auth_hash["uid"])
        Authorization.create :user_id => user.id, :provider => auth_hash["provider"], :uid => auth_hash["uid"], :token => auth_hash['credentials']['token']
      end
      session[:user_id] = user.id
      redirect_to session[:previous_url]
  	else
    	user = User.create(sign_in_count: 1 , email: email , password: '!!!!!!!!')
    	user.build_profile :first_name => first_name, :last_name => last_name , :photo => photo 
    	user.authorizations.build :provider => auth_hash["provider"], :uid => auth_hash["uid"], :token => auth_hash['credentials']['token']
    	user.save
    	puts "in else"
    	puts user.errors.full_messages
 		  session[:user_id] = user.id
      puts "sees"
      puts session[:user_id]
      redirect_to session[:previous_url]
  	end
  end

  def failure
    render :text => "Sorry, but you didn't allow access to our app!"
  end

  def destroy
  	session[:user_id] = nil
  	redirect_to root_path
  end
end
