load "#{Rails.root}/lib/ladder.rb"
class HomeController < ApplicationController

  def index
	@start_word = dictionary.sample
	@end_word = dictionary.sample
  end

  def show
  end

end
