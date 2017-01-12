require_relative 'action_for_teachers'
require_relative 'teacher'

class SeniorTeacher < Teacher
  include Shout
  include Salary
  include Teacher_Phase

  attr_reader :performance_rating

  def initialize(options={})
    @target_raise = 1000
    @max_rating = 90
    super
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
