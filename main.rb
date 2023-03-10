require './player'
require './manager'
require './question'

puts "enter player 1 name"
name1 = $stdin.gets.chomp
player1 = Player.new(1,name1)
puts "enter player 2 name"
name2 = $stdin.gets.chomp
player2 = Player.new(2,name2)
manage = Manager.new(0)

while player1.life > 0 && player2.life > 0
  puts "Question for #{player1.name}"
  question1 = Question.new(0,20)
  question1.generate
  puts "#{question1.ask}"
  answer = $stdin.gets.chomp

  check_ans = question1.check_ans(answer)
  if (check_ans)
    puts "#{manage.reponse(player1,check_ans)}"
    player1.correct_ans
  else
    puts "#{manage.reponse(player1,check_ans)}"
    player1.wrong_ans
  end
  

  puts "#{manage.score_show(player1,player2)}"
  # encapsulation this
  puts "Question for #{player2.name}"
  question2 = Question.new(0,20)
  puts "#{question2.ask}"
  answer = $stdin.gets.chomp

  check_ans = question2.check_ans(answer)
  if (check_ans)
    puts "#{manage.reponse(player2,check_ans)}"
    player2.correct_ans
  else
    puts "#{manage.reponse(player2,check_ans)}"
    player2.wrong_ans
  end
  puts "#{manage.score_show(player1,player2)}"

end

puts " #{manage.game_end(player1,player2)}"