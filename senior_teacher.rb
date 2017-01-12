require_relative 'dbc_people'

class SeniorTeacher < Teachers

  def initialize(options={})
    super
    @phase = 3
    @target_raise = 1000
    @age = 0
    @target_rating = 90
  end

  def teach_stuff
    response = ""
    response += "Listen, class, this is how everything works, fo SHO! "
    response += "*drops flat-out insane knowledge bomb* "
    response += "... You're welcome. *saunters away*"
    response
  end

  def set_performance_rating(rating)
    super
  end

  def lead_training_session
    puts "Hey newbie!  Here are some common pitfalls.  Don't fall in them!"
  end
end
