require_relative 'teacher'
require_relative 'ActionModule'

class SeniorTeacher < Teacher
  attr_reader :performance_rating, :target_raise, :phase
  include HighFive

  def initialize(options={})
    super
    @target_raise = 1000
    @phase = 3
    @rating = 90
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
