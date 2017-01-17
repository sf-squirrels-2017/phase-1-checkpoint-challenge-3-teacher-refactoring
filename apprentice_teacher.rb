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
      @performance_rate = 80
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
