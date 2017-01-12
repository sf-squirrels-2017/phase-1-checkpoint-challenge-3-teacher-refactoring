class Student 
  ## I know that this should be a compositional relationship, but am not sure how to implement it. I need a module and don't have time for it.

  attr_reader :age, :phase
  attr_accessor :name

  def initialize(options = {})
    super
    @phase = 1
  end

  def offer_high_five
    "High five!"
  end

  def set_phase(num)
    response = ""
    if num == @phase
      response += "I'm doing phase #{@phase} again because "
      response += "I put my learning first. I'm gonna rock it!"
    else
      response = "Oooh, phase #{num}. I hope I'm ready!"
    end
    @phase = num
    response
  end

  def learn_stuff
    response = ""
    response += "WHOA! I've never thought of it quite like that before. "
    response += "Now I feel like a genius!"
    response
  end
end
