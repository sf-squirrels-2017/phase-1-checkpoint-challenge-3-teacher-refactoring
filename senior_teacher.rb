class SeniorTeacher < Teacher
  # attr_reader :age, :phase, 
  # attr_reader :salary, :target_raise
  attr_reader :performance_rating
  # attr_accessor :name

  def initialize(options={})
    super
  # @age = options.fetch(:age, 0)
  # @name = options.fetch(:name, "")
    @target_raise = 1000
  # @phase = 3
    @performance_rating_threshold = 90
  end

  # def offer_high_five
  #   "High five!"
  # end

  # def set_phase(num)
  #   @phase = num
  #   "Cool, I've always wanted to teach phase #{num}!"
  # end

  def teach_stuff
    response = ""
    response += "Listen, class, this is how everything works, fo SHO! "
    response += "*drops flat-out insane knowledge bomb* "
    response += "... You're welcome. *saunters away*"
    response
  end

  # def salary=(new_salary)
  #   puts "This better be good!"
  #   @salary = new_salary
  # end

  # def receive_raise(raise)
  #   @salary += raise
  # end

  # def set_performance_rating(rating)
  #   response = ""
  #   if rating > @performance_rating_threshold
  #     response = "Yay, I'm a great employee!"
  #     receive_raise(@target_raise)
  #   else
  #     response += "Oh, well -- thanks to this actionable, specific, and kind "
  #     response += "feedback, I'll do better next time."
  #   end
  #   response
  # end

  def lead_training_session
    puts "Hey newbie!  Here are some common pitfalls.  Don't fall in them!"
  end
end
