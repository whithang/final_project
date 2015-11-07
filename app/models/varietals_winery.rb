class VarietalsWinery < ActiveRecord::Base
	belongs_to :varietal
	belongs_to :winery
	validates_presence_of :winery_id , :varietal_id
end
