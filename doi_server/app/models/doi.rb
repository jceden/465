class Doi < ActiveRecord::Base
	has_many :urls, dependent: :destroy
	accepts_nested_attributes_for :urls

	def name
	doi_num
	end
end
