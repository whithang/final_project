# == Schema Information
#
# Table name: wineries
#
#  id          :integer          not null, primary key
#  name        :string
#  bio         :text
#  street      :string
#  city        :string
#  state       :string
#  zip         :integer
#  photo       :string
#  created_at  :datetime         not null
#  updated_at  :datetime         not null
#  phone       :string
#  email       :string
#  appointment :boolean
#  pets        :boolean
#  picnic      :boolean
#  fee         :float
#  open        :time
#  close       :time
#  website     :string
#

class Winery < ActiveRecord::Base
	extend FriendlyId
    friendly_id :name, use: :slugged

	has_many :reviews, dependent: :destroy
	has_many :winery_images, dependent: :destroy
	belongs_to :memory_details
	belongs_to :atmosphere
	has_many :varietals_winery
	has_many :varietals, :through => :varietals_winery
	validates_presence_of :name

	# before_create for search entry
	# scope :sonoma, -> {where(city: "Sonoma")}
	# downcase all db entries

end
