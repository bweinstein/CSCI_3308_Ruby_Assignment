#Author: Brian Weinstein
#Sources: rubydoc

class WrongNumberOfPlayersError <  StandardError ; end

class NoSuchStrategyError <  StandardError ; end

def rps_tournament_winner(game)
    if game[0][0].class == String
      return rps_game_winner(game) #finish tournament 
    else 
      return rps_game_winner([rps_tournament_winner(game[0]),rps_tournament_winner(game[1])]) #recursively stp through the tournament
    end
end

def rps_game_winner(game)

	#make sure game has 2 players
    raise WrongNumberOfPlayersError unless game.length == 2
    
	#get R, P, S
	player1 = game[0][1] 
	player2 = game[1][1]
	
	
	#if both players play same thing, player 1 wins
	if player1 == "R" && player2 == "R"
		return game[0]
	elsif player1 == "S" && player2 == "S"
		return game[0]
	elsif player1 == "P" && player2 == "P"
		return game[0]
	
	#Player 1 wins
	elsif player1 == "R" && player2 == "S"
		return game[0]
	elsif player1 == "P" && player2 == "R"
		return game[0]
	elsif player1 == "S" && player2 == "P"
		return game[0]
	
	#Player 2 wins
	elsif player1 == "R" && player2 == "P"
		return game[1]
	elsif player1 == "P" && player2 == "S"
		return game[1]
	elsif player1 == "S" && player2 == "P"
		return game[1]
	elsif player1 == "S" && player2 == "R"
		return game[1]
	else
		raise NoSuchStrategyError
	end 
	
end

#testing 

	testargs = [

    [

        [ ["Armando", "P"], ["Dave", "S"] ],

        [ ["Richard", "R"],  ["Michael", "S"] ],

    ],

    [

        [ ["Allen", "S"], ["Omer", "P"] ],

        [ ["David E.", "R"], ["Richard X.", "P"] ]

    ]

]
	winner = rps_tournament_winner(testargs)
	puts "The winner is #{winner}" 
	 
