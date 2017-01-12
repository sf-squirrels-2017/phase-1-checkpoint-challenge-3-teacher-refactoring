require_relative 'teacher'

class ApprenticeTeacher < Teacher
  attr_reader :age, :salary, :phase, :target_raise
  attr_accessor :name

  def initialize(options={})
    super
    @target_raise = 800
  end

  def teach_stuff
    "Listen, class, this is how everything works. *drops crazy knowledge bomb* ... You're welcome."
  end

  def set_performance_rating(rating)
    if rating > 80
      response = "Yay, I'm a great employee!"
      receive_raise(@target_raise)
    else
      response = "Oh, well -- thanks to this actionable, specific, and kind feedback, I'll do better next time."
    end
    response
  end

  def attend_training_session
    "Whoa. I know ruby-fu"
  end
end
