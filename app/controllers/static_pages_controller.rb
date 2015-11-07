class StaticPagesController < ApplicationController

  def home
    @title = 'Home'
    if session[:user_id]
      @current_user = User.find(session["user_id"])
    end
    
    data = WineryImage.order("RANDOM()").limit(4)
    @winery = {}
    x=0   
    for i in data
      data1={}
      data1['winery_id'] = i.winery.id
      data1['name'] = i.winery.name
      data1['image'] = i.photo
      @winery[x] = data1
      x=x+1
    end
    @city = ''
    for j in Winery.all.map(&:city).uniq
      @city = @city + j + ','
    end
    for j in Winery.all.map(&:zip).uniq
      @city = @city + j.to_s + ','
    end 
  end

  def harvest_trip
    @title = 'Havest trip'
    @today = Time.now
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

  def harvest_trip_lunch
    @title = 'Harvest trip lunch'
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

  def my_memories
    @title = 'My memories'
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


  
end
