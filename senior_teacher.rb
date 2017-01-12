 require_relative 'teacher'
 require_relative 'module_high_five'

class SeniorTeacher < Teacher
  include OfferHighFive
  attr_reader :performance_rating, :target_raise

  def initialize(options={})
    super
    @target_raise = 1000
  end

  def lead_training_session
    puts "Hey newbie!  Here are some common pitfalls.  Don't fall in them!"
  end
end
