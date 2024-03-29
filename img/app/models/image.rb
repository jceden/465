class Image < ActiveRecord::Base
	belongs_to :user
	has_many :accesses
	has_many :users, through: :accesses
	has_many :tags
	def generate_filename
		self.filename = (0...15).map { (65 + rand(26)).chr }.join + ".jpg"
		if Image.find_by(filename: self.filename) !=nil
		generate_filename
		end
	end
	def user_dropdown
	(User.all - self.users).map {|image| [image.name + "("+ image.email + ")", image.id] if image.id != self.user_id}.compact!
	end
end
