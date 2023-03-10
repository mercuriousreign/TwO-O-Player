class Question
  def initialize (min, max) 
    @min = min
    @max = max
    @val1 = 0
    @val2 = 0
    @answer = min+max
    @question = [min,max,min+max]
  end

  def generate
    @val1 = rand(1..20)
    @val2 = rand(1..20)
  end

  def ask
    return "What is the addition of #{@val1} and #{@val2}"
  end

  
  def check_ans(input)
    puts "the answer is #{@val1+@val2}"
    (@val1+@val2) == input.to_i
  end

end