require_relative 'teachable'
require_relative 'rateable'
require_relative 'trainable'

class ApprenticeTeacher < Teacher
  include teachable
  include rateable
  include trainable


  attr_reader :age, :salary, :phase, :target_raise
  attr_accessor :name

  def initialize(options={})
    super
    # @age = options.fetch(:age, 0)
    # @name = options.fetch(:name, "")
    # @target_raise = 800
    # @phase = 3
  end

  Use module teachable
  # def offer_high_five
  #   "High five!"
  # end
  #
  # def set_phase(num)
  #   @phase = num
  #   "Cool, I've always wanted to teach phase #{num}!"
  # end
  #
  # def teach_stuff
  #   response = ""
  #   response += "Listen, class, this is how everything works. "
  #   response += "*drops crazy knowledge bomb* "
  #   response += "... You're welcome."
  #   response
  # end



  Use module rateable

  # def salary=(new_salary)
  #   puts "This better be good!"
  #   @salary = new_salary
  # end
  #
  # def receive_raise(raise)
  #   @salary += raise
  # end
  #
  # def set_performance_rating(rating)
  #   response = ""
  #   if rating > 80
  #     response = "Yay, I'm a great employee!"
  #     receive_raise(@target_raise)
  #   else
  #     response += "Oh, well -- thanks to this actionable, specific, and kind "
  #     response += "feedback, I'll do better next time."
  #   end
  #   response
  # end

  Use module trainable
  # def attend_training_session
  #   puts "Whoa. I know ruby-fu"
  # end
end
