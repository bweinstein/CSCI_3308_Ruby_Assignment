#Author: Brian Weinstein
#Sources: rubydoc

class WrongNumberOfPlayersError <  StandardError ; end

class NoSuchStrategyError <  StandardError ; end

 

def rps_game_winner(game)

	#make sure game has 2 players
    raise WrongNumberOfPlayersError unless game.length == 2
	
	#get R, P, S
	@player1 = game[0][1] 
	@player2 = game[1][1]

	#if both players play same thing
	if @player1 == "R" && @player2 == "R"
		return game[1]
	elseif @player1 == "S" && @player2 == "S"
		return game[1]
	elseif @player1 == "P" && @player2 == "P"
		return game[1]
	
	#Player 1 wins
	elseif @player1 == "R" && @player2 == "S"
		return game[1]
	elseif @player1 == "P" && @player2 == "R"
		return game[1]
	elseif @player[1] == "S" && @player2 == "P"
		return game[1]
	
	#Player 2 wins
	elseif @player1== "R" && @player2 == "P"
		return game[2]
	elseif @player1 == "P" && @player2 == "S"
		return game[2]
	elseif @player1 == "S" && @player2 == "P"
		return game[2]
	
	else
		NoSuchStrategyError
	end
	
end
#testing 

	#testaargs = [ ["Brian", "R"], ["Julie", "P"] ] 
	puts rps_game_winner([["Brian", "R"], ["Julie", "P"]]).to_s
	

