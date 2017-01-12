require_relative 'teacher'
require_relative 'module_high_five'

class ApprenticeTeacher < Teacher
  include OfferHighFive
  attr_reader :target_raise

  def initialize(options={})
    super
    @target_raise = 800
  end

  def attend_training_session
    puts "Whoa. I know ruby-fu"
  end
end
