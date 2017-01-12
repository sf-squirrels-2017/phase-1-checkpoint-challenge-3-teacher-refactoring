require_relative 'teacher'
require_relative 'highfive'

class SeniorTeacher < Teacher
  attr_reader :age, :salary, :phase, :target_raise
  attr_accessor :name, :perform_rating

  include HighFive

  def initialize(options={})
    super
    @target_raise = 1000
    @perform_rating = 90
  end

  def teach_stuff
    response = ""
    response += "Listen, class, this is how everything works, fo SHO! "
    response += "*drops flat-out insane knowledge bomb* "
    response += "... You're welcome. *saunters away*"
    response
  end

  def lead_training_session
    puts "Hey newbie!  Here are some common pitfalls.  Don't fall in them!"
  end
end
