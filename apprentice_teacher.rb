require_relative 'teacher'
require_relative 'ActionModule'

class ApprenticeTeacher < Teacher
  attr_reader :target_raise, :phase
  include HighFive

  def initialize(options={})
    super
    @target_raise = 800
    @phase = 3
    @rating = 80
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
