class WineryImage < ActiveRecord::Base
	belongs_to :winery

	validates_presence_of :winery_id
end
