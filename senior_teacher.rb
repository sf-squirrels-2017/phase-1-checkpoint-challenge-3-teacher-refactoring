require_relative "person"
require_relative "modules"

class SeniorTeacher < Person
  attr_reader :salary, :phase, :performance_rating, :target_raise
  include Teacher_stuff
  include Offer_high_five

  def initialize(options={})
    super
    @phase = 3
    @target_raise = 1000
    @performance_rate = 90
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
