class Question
  attr_reader :answer

  def initialize
    @num1 = rand(1..20)
    @num2 = rand(1..20)
    @operator = [:+, :-, :*, :/].sample
    @answer = @num1.send(@operator, @num2).round(2)
  end

  def to_s
    "What is #{@num1} #{@operator} #{@num2}?"
  end
end
