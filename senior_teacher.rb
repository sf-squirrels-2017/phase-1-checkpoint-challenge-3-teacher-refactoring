require_relative 'people'
require_relative 'dbc_people'

class SeniorTeacher < Teachers
  attr_reader :performance_rating, :target_raise
  include People


  def initialize(options={})
    super
    @target_raise = 1000
    @max_rating = 90
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
