require_relative 'action_for_teachers'
require_relative 'teacher'

class ApprenticeTeacher < Teacher
  include Shout
  include Salary
  include Teacher_Phase

  def initialize(options={})
    @target_raise = 800
    @max_rating = 80
    super
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
