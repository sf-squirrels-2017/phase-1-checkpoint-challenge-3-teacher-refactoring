require_relative 'teachable'
require_relative 'raiseable'
require_relative 'apprentice_teacher'
require 'awesome_print'

class SeniorTeacher < ApprenticeTeacher
  include Raiseable
  include Teachable
  attr_reader :age, :salary, :phase, :performance_rating, :target_raise
  attr_accessor :name

  def initialize(options={})
    @phase = 3
    @age = options.fetch(:age, 0)
    @name = options.fetch(:name, "")
    @target_raise = 1000
  end

  def set_performance_rating(rating)
    response = ""
    if rating > 90
      response = "Yay, I'm a great employee!"
      receive_raise(@target_raise)
    else
      response += "Oh, well -- thanks to this actionable, specific, and kind "
      response += "feedback, I'll do better next time."
    end
    response
  end

  def lead_training_session
    puts "Hey newbie!  Here are some common pitfalls.  Don't fall in them!"
  end

  def teach_stuff
    response = ""
    response += "Listen, class, this is how everything works, fo SHO! "
    response += "*drops flat-out insane knowledge bomb* "
    response += "... You're welcome. *saunters away*"
    response
  end

end


jan = SeniorTeacher.new({name: "Jan", age: 35})

ap what_is_this = jan.class

ap "Jan's class is a #{what_is_this}"
