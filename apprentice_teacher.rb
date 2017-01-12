
require_relative 'teacher'

class ApprenticeTeacher < Teacher

  RATING_THRESHOLD = 80

  include HighFiveable

  attr_reader :salary, :target_raise

  def initialize(options={})
    super
    @target_raise = options.fetch(:target_raise, 800)
  end

  def teach_stuff
    response = ""
    response += "Listen, class, this is how everything works. "
    response += "*drops crazy knowledge bomb* "
    response += "... You're welcome."
    response
  end

  def attend_training_session
    puts "Whoa. I know ruby-fu"
  end
end
