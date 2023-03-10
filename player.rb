class Player
  attr_reader :life , :name, :score
  def initialize(id,name)
    @id = id
    @name = name
    @life = 3
    @score = 0
  end

  def subtract_life
    @life -= 1
  end

  def correct_ans
    @score += 1
  end

  def wrong_ans
    @score -= 1
    subtract_life
  end
  
end
  