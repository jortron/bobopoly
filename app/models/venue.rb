class Venue < ActiveRecord::Base

	has_many :microposts, :board_games
	

end
