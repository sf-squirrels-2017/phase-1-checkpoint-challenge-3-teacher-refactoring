require_relative 'teacher'

class SeniorTeacher < Teacher
  attr_reader :age, :salary, :phase, :performance_rating, :target_raise
  attr_accessor :name

  def initialize(options={})
    super
    @target_raise = 1000
  end

  def teach_stuff
    "Listen, class, this is how everything works, fo SHO! *drops flat-out insane knowledge bomb* ... You're welcome. *saunters away*"
  end

  def set_performance_rating(rating)
    if rating > 90
      response = "Yay, I'm a great employee!"
      receive_raise(@target_raise)
    else
      response = "Oh, well -- thanks to this actionable, specific, and kind feedback, I'll do better next time."
    end
    response
  end

  def lead_training_session
    "Hey newbie!  Here are some common pitfalls.  Don't fall in them!"
  end
end
