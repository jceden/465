load "#{Rails.root}/lib/ladder.rb"
class HomeController < ApplicationController

  def index
	@start_word = dictionary.sample
	@end_word = dictionary.sample
  end

  def show
	@array = Array.new
	@start = params[:word0]
	@word1 = params[:guess1]
	@word2 = params[:guess2]
	@word3 = params[:guess3]
	@word4 = params[:guess4]
	@word5 = params[:guess5]
	@end = params[:word6]
	@array.push(@start)
	if @word1 =~ /^[a-zA-Z]+$/
		@array.push(@word1)
	end
	if @word2 =~ /^[a-zA-Z]+$/
		@array.push(@word2)
	end
	if @word3 =~ /^[a-zA-Z]+$/
		@array.push(@word3)
	end
	if @word4 =~ /^[a-zA-Z]+$/
		@array.push(@word4)
	end
	if @word5 =~ /^[a-zA-Z]+$/
		@array.push(@word5)
	end
	@array.push(@end)
	@array.compact!
	if legal @array
		@result = "You win!"
	else
		@result = "You lose"
	end
	@array.compact!
  end

end
