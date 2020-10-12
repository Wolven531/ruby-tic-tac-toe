class WelcomeController < ApplicationController
	skip_forgery_protection

	def initialize
		@numTies = 0
		@numWinsPlayer0 = 0
		@numWinsPlayer1 = 0
	end

	def index
		
	end

	def create
		@result = GameResult.new(result_params)

		@history = GameHistory.first
		if @history
		else
			@history = GameHistory.new
		end

		if @result.result == 'win'
			if @result.player == 0
				@history.add_player0_win
			else
				@history.add_player1_win
			end
		else
			@history.add_tie
		end

		@history.save

		render :json => @history
	end

	private

	def result_params
		params.require(:result).permit(:player, :result)
	end
end
