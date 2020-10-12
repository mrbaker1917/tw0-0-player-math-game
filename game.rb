require 'pp'
require './player'
require './question'

class Game
  puts "What is Player One's name?"
  print "> "
  pl1 = gets.chomp
  puts "What is Player Two's name?"
  print "> "
  pl2 = gets.chomp

  @player1 = Player.new(pl1)
  @player2 = Player.new(pl2)
  puts "Welcome to the Math Game #{@player1.name} and #{@player2.name}!"

  if @player1.lives == 0
    pp "#{@player2.name} wins with a score of #{@player2.lives}/3"
    pp "----- GAME OVER -----"
    pp "Good bye!"
  end
  if @player2.lives == 0
    pp "#{@player1.name} wins with a score of #{@player1.lives}/3"
    pp "----- GAME OVER -----"
    pp "Good bye!"
  end


  pp @player1.lives
  pp @player2.name
  @question = Question.new
  pp @question.question
  pp @question.answer
  
end