require_relative 'teacher'
require_relative 'highfive'

class ApprenticeTeacher < Teacher
  attr_reader :age, :salary, :phase, :target_raise
  attr_accessor :name, :perform_rating

  include HighFive

  def initialize(options={})
    super
    @target_raise = 800
    @perform_rating = 80
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
