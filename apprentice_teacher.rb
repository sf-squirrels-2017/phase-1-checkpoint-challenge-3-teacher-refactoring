require_relative 'senior_teacher'
class ApprenticeTeacher < SeniorTeacher
  attr_reader :age, :salary, :phase, :target_raise
  attr_accessor :name

  def initialize(options={})
    super (options)
    @target_raise = 800
  end

  def teach_stuff
    response = ""
    response += "Listen, class, this is how everything works. "
    response += "*drops crazy knowledge bomb* "
    response += "... You're welcome."
    response
  end

# I think I need to move this behavior to a module, but not sure. 
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

end
