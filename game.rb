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
  @alternator = 0
  while @player1.lives != 0 && @player2.lives != 0
    @question = Question.new
    puts "----- NEW TURN -----"
    if @alternator == 0
      puts "#{@player1.name}: #{@question.question}"
      print "> "
      pl1_answer = gets.chomp.to_i
      if pl1_answer == @question.answer
        puts "#{@player1.name}: Yes! You are correct"
        puts "#{@player1.name}: #{@player1.lives}/3 vs #{@player2.name}: #{@player2.lives}/3"
      else
        @player1.lives = @player1.lives - 1
        puts "#{@player1.name}: Seriously? No!"
        puts "#{@player1.name}: #{@player1.lives}/3 vs #{@player2.name}: #{@player2.lives}/3"
      end
    end
    if @alternator == 1
      puts "#{@player2.name}: #{@question.question}"
      print "> "
      pl2_answer = gets.chomp.to_i
      if pl2_answer == @question.answer
        puts "#{@player2.name}: Yes! You are correct"
        puts "#{@player1.name}: #{@player1.lives}/3 vs #{@player2.name}: #{@player2.lives}/3"
      else
        @player2.lives = @player2.lives - 1
        puts "#{@player2.name}: Seriously? No!"
        puts "#{@player1.name}: #{@player1.lives}/3 vs #{@player2.name}: #{@player2.lives}/3"
      end
    end
    if @alternator == 0 
      @alternator = 1
    else
      @alternator = 0
    end
  end


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


  
  
end