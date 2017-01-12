require_relative 'teachable'
require_relative 'raiseable'
require_relative 'rateable'
require 'awesome_print'


class ApprenticeTeacher
  include Raiseable
  include Teachable
  attr_reader :age, :salary, :phase, :target_raise
  attr_accessor :name

  def initialize(options={})
    @age = options.fetch(:age, 0)
    @name = options.fetch(:name, "")
    @target_raise = 800
    @phase = 3
  end

  def set_performance_rating(rating)
    response = ""
    if rating > 80
      response = "Yay, I'm a great employee!"
      receive_raise(@target_raise)
    else
      response += "Oh, well -- thanks to this actionable, specific, and kind "
      response += "feedback, I'll do better next time."
    end
    response
  end

  def teach_stuff
    response = ""
    response += "Listen, class, this is how everything works. "
    response += "*drops crazy knowledge bomb* "
    response += "... You're welcome."
    response
  end

end


rey = ApprenticeTeacher.new({name: "Rey", age: 21})

ap what_is_this = rey.class

ap "Rey's class is a #{what_is_this}"
