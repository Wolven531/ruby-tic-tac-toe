class GameHistory < ApplicationRecord
	attr_accessor :num_ties
	attr_accessor :num_p0_wins
	attr_accessor :num_p1_wins

	def add_player0_win
		# history.num_p0_wins = history.num_p0_wins + 1
		# @num_p0_wins += 1
	end

	def add_player1_win
		# history.num_p1_wins = history.num_p1_wins + 1
		# @num_p1_wins += 1
	end

	def add_tie
		# history.num_ties = history.num_ties + 1
		# @num_ties += 1
	end
end
