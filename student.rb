require_relative 'module_high_five'
require_relative 'module_set_phase'

class Student
  include SetPhase
  include OfferHighFive
  attr_reader :age, :phase
  attr_accessor :name

  def initialize(options = {})
    @phase = 1
    @age = options.fetch(:age, 0)
    @name = options.fetch(:name, "")
  end

  def learn_stuff
    response = ""
    response += "WHOA! I've never thought of it quite like that before. "
    response += "Now I feel like a genius!"
    response
  end
end
