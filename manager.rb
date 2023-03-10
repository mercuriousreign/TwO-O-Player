class Manager

  def initialize (score)
    @score = score
  end

  def reponse (player,answer)
    if (answer)
      return "Correct! #{player.name} wins a score!"
    end
    return "Wrong! #{player.name} losses a score!"
  end

  def score_show(player1,player2)
    return "Current score is :
    #{player1.name}  Score : #{player1.score}  Life : #{player1.life}
    #{player2.name} Score : #{player2.score} Life : #{player2.life}" 
  end
  
  def game_end(player1,player2)
    winner = player1.score > player2.score ? player1 : player2
    return "GAMMEEEE OVERRRR! Winner is #{winner.name} with a score of #{winner.score}"
  end

end