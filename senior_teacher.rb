require_relative './teacher/'
require_relative './high_five/'

class SeniorTeacher < Teacher
  include HighFive

  attr_reader :performance_rating

  RATING_FOR_RAISE = 90

  def initialize(options={})
    super
    # @phase = 3
    # @age = options.fetch(:age, 0)
    # @name = options.fetch(:name, "")
    @target_raise = 1000
  end

  def lead_training_session
    puts "Hey newbie!  Here are some common pitfalls.  Don't fall in them!"
  end
end
