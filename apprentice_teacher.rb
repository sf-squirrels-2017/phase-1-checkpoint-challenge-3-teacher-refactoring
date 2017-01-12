class ApprenticeTeacher < Teacher
  # attr_reader :age, :salary, :phase, :target_raise
  # attr_accessor :name

  def initialize(options={})
    super
    @target_raise = 800
    @rating_target = 80
  end

  def attend_training_session
    puts "Whoa. I know ruby-fu"
  end
end
