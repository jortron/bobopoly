class BoardGamesController < ApplicationController

	def show
    @board_game = board_game.find(params[:id])
  	end

  	def index
     @board_game = board_game.paginate(page: params[:page])
  	end

end
