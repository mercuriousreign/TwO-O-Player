Class Player:
  - id
  - name?
  - score
  - life
  - correct answers, wrong answers
  - Method initialize (score of 0 , life 3/3 , name )
  - Methods : subtract life point
  - Method player .wrong
  - Method player right increase score

Class Question :
- min : 1
- max : 20
- initialize functiohn
- (pick 2 number
)
- rand1
- rand2
- answer addition (rand1+rand2)
- Method generate question
* random value (1,20)


Class game manager
- check current player (if answer is right (gets.chomp ))
- method check answer (var1, var2, operator(?))
- method response (send response based on answer being wrong or right)
- Methods game over (string)
- method ( out put string if new turn)

main.rb
import player
import question
import game manger

initialize game 
player1 = Player.new
player2 = Player.new
game = game.new
While loop (if one of the player life is = 0)
  - player 1 set of code (invoke question class *question = new if wrong if right player.wrong or player.right)
  * new turn method
  - player 2 set of code  (invoke question class *question = new if wrong if right player.wrong or player.right)

game.gameover (show winner here)


