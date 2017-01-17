require_relative "person"
require_relative "modules"

class ApprenticeTeacher < Person
  attr_reader :salary, :phase, :target_raise
  # attr_accessor :name

  include Teacher_stuff
  include Offer_high_five

  def initialize(options={})
    super
    @phase = 3
    @target_raise = 800
  end

  def teach_stuff
    response = ""
    response += "Listen, class, this is how everything works. "
    response += "*drops crazy knowledge bomb* "
    response += "... You're welcome."
    response
  end

  def set_performance_rating(rating)
    response = ""
    if rating > 80
      response = "Yay, I'm a great employee!"
      receive_raise(@target_raise)
    else
      response += "Oh, well -- thanks to this actionable, specific, and kind "
      response += "feedback, I'll do better next time."
    end
    response
  end

  def attend_training_session
    puts "Whoa. I know ruby-fu"
  end
end
