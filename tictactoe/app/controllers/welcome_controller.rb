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
		@player = params[:player].to_i
		@result = params[:result].to_s

		if @result == 'win'
			if @player == 0
				add_player0_win
			else
				add_player1_win
			end
		else
			add_tie
		end

		render :json => {
			:numWinsPlayer0 => @numWinsPlayer0,
			:numWinsPlayer1 => @numWinsPlayer1,
			:numTies => @numTies
		}
	end

	private

	def add_player0_win
		@numWinsPlayer0 = @numWinsPlayer0 + 1
	end

	def add_player1_win
		@numWinsPlayer1 = @numWinsPlayer1 + 1
	end

	def add_tie
		@numTies = @numTies + 1
	end
end
