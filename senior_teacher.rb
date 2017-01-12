
require_relative 'teacher'

class SeniorTeacher < Teacher

  RATING_THRESHOLD = 90

  include HighFiveable

  attr_reader :salary, :performance_rating, :target_raise

  def initialize(options={})
    super
    @target_raise = options.fetch(:target_raise, 1000)
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
