class Question
  attr_reader :question, :answer

  def initialize
    number1 = rand(1..20)
    number2 = rand(1..20)
    @question = "What is #{number1} + #{number2}?"
    @answer = number1 + number2
  end
end