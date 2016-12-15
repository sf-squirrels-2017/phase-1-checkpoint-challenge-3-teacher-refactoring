require_relative 'dbc_people'

class ApprenticeTeacher < Teachers
  attr_reader :age, :salary, :phase, :performance_rating, :target_raise
  attr_accessor :name

  def initialize(options={})
    super
    @phase = 3
    @target_raise = 800
    # @age = options.fetch(:age, 0)
    # @name = options.fetch(:name, "")
  end

  def offer_high_five
    super
    # "High five!"
  end

  def set_phase(num)
    super
    # @phase = num
    # "Cool, I've always wanted to teach phase #{num}!"
  end

  def teach_stuff
    response = ""
    response += "Listen, class, this is how everything works. "
    response += "*drops crazy knowledge bomb* "
    response += "... You're welcome."
    response
  end

  def salary=(new_salary)
    super
    # puts "This better be good!"
    # @salary = new_salary
  end

  def receive_raise(raise)
    super
    # @salary += raise
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
