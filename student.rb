require_relative 'bootcamp_academic'

class Student < BootcampAcademic
  attr_reader :age, :phase
  attr_accessor :name

  def initialize(options={})
    super
    @phase = 1
  end

  def offer_high_five
    "High five!"
  end

  def set_phase(num)
    if num == @phase
      response = "I'm doing phase #{@phase} again because I put my learning first. I'm gonna rock it!"
    else
      response = "Oooh, phase #{num}. I hope I'm ready!"
    end
    @phase = num
    response
  end

  def learn_stuff
    "WHOA! I've never thought of it quite like that before. Now I feel like a genius!"
  end
end
