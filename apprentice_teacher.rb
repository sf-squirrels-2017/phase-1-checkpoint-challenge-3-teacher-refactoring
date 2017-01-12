require_relative "teacher"

class ApprenticeTeacher < Teacher

  def initialize(options={})
    super
    # @performance_rating = nil
    @target_raise = 800
    @rating_target = 80
  end

  def attend_training_session
    puts "Whoa. I know ruby-fu"
  end
end
