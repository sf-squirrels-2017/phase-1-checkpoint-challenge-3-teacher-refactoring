require_relative "teacher"

class SeniorTeacher < Teacher
  
  attr_reader :performance_rating

  def initialize(options={})
    super
    @target_raise = 1000
    @rating_target = 90 
    if options[:performance_rating]
      @performance_rating = options[:performance_rating]
    else
      @performance_rating = 0
    end
  end

  def teach_stuff
    response = ""
    response += "Listen, class, this is how everything works, fo SHO! "
    response += "*drops flat-out insane knowledge bomb* "
    response += "... You're welcome."
    response += " *saunters away*"
    response
  end

  def lead_training_session
    puts "Hey newbie!  Here are some common pitfalls.  Don't fall in them!"
  end
end
