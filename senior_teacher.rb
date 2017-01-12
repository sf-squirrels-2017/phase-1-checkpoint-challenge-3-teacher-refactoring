require_relative 'apprentice_teacher'

class SeniorTeacher < ApprenticeTeacher
  attr_reader :age, :salary, :phase, :performance_rating, :target_raise
  attr_accessor :name
  undef_method :attend_training_session

  def initialize(options={})
    @phase = 3
    @age = options.fetch(:age, 0)
    @name = options.fetch(:name, "")
    @target_raise = 1000
    @rating_requirment = 90
  end

  def teach_stuff
    response = ""
    response += "Listen, class, this is how everything works, fo SHO! "
    response += "*drops flat-out insane knowledge bomb* "
    response += "... You're welcome. *saunters away*"
    response
  end

  def lead_training_session
    puts "Hey newbie!  Here are some common pitfalls.  Don't fall in them!"
  end
end
