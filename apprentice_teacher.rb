require_relative 'people'
require_relative 'dbc_people'

class ApprenticeTeacher < Teachers
  attr_reader :target_raise
  include People


  def initialize(options={})
  	super
    @target_raise = 800
    @max_rating=80
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
