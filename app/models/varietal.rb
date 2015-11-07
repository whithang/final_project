class Varietal < ActiveRecord::Base
	belongs_to :wine_type
	has_many :varietals_winery
	has_many :wineries, :through => :varietals_winery
end