module HighFivable
  def offer_high_five
    "High five!"
  end
end

module Teachable
  def set_phase(num)
    @phase = num
    "Cool, I've always wanted to teach phase #{num}!"
  end

  def salary=(new_salary)
    puts "This better be good!"
    @salary = new_salary
  end

  def receive_raise(raise)
    @salary += raise
  end
end

class People
  include HighFivable

  def initialize(options = {})
    @phase = phase
    @age = options.fetch(:age, 0)
    @name = options.fetch(:name, "")
  end
end

class Teachers < People
  attr_reader :age, :salary, :target_raise, :target_rating
  attr_accessor :name, :phase

  include Teachable

  def initialize(options={})
    super
    @target_raise = target_raise
    @target_rating = target_rating
  end

  def set_performance_rating(rating)
    response = ""
    if rating > @target_rating
      response = "Yay, I'm a great employee!"
      receive_raise(@target_raise)
    else
      response += "Oh, well -- thanks to this actionable, specific, and kind "
      response += "feedback, I'll do better next time."
    end
    response
  end
end
