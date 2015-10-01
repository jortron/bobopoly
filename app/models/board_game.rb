class BoardGame < ActiveRecord::Base
	belongs_to :user, :venue
	has_many :microposts

 
end
