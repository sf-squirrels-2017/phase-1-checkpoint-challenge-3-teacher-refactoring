require_relative 'dbc_people'

class ApprenticeTeacher < Teachers
  def initialize(options={})
    super
    @phase = 3
    @target_raise = 800
    @target_rating = 80
  end

  def teach_stuff
    response = ""
    response += "Listen, class, this is how everything works. "
    response += "*drops crazy knowledge bomb* "
    response += "... You're welcome."
    response
  end

  def set_performance_rating(rating)
    super
  end

  def attend_training_session
    puts "Whoa. I know ruby-fu"
  end
end
